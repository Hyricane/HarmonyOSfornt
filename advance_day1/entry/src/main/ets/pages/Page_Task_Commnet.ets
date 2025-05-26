import http from '@ohos.net.http'
import { BusinessError } from '@kit.BasicServicesKit';

interface ApifoxModel_commend {
  /**
   * 评论者-内容
   */
  content: string;
  /**
   * 评论者-姓名
   */
  username: string;
}
export interface ApifoxModel_List {
  /**
   * 总页码数，默认后台设置了10条1页
   */
  allPage: number;
  /**
   * 响应数据
   */
  data: comment[];
  /**
   * 响应消息
   */
  msg: string;
  /**
   * 业务状态码，200成功
   */
  status: number;
}

export interface comment {
  /**
   * 评论内容
   */
  content: string;
  /**
   * 评论id
   */
  id: number;
  /**
   * 评论时间
   */
  time: string;
  /**
   * 评论者姓名
   */
  username: string;
}

@Entry
@Component
struct Page_Task_Commnet {
  @State commentContent:string = ''
  @State commentList:comment[]=[]
  NewcommentList:comment[]=[]
  @State isRefresh:boolean = true
  isReq:boolean = false
  userName:string = '贾凯哲'
  commentReq = http.createHttp()
  build() {
    Column(){
      Row({space:10}){
        TextArea({placeholder:'高楼平地起，评论全靠你',text:$$this.commentContent})
          .height(100)
          .layoutWeight(1)
        Column({space:10}){
          Image($r('app.media.ic_common_send'))
            .width(30)
            .aspectRatio(1)
          Text('发布')
            .fontWeight(500)
            .fontSize(20)
            .fontColor('#F24118')
        }
        .width(50)
        .onClick(()=>{
          //'https://hmajax.itheima.net/api/addcmt'
          this.commentReq.request('https://hmajax.itheima.net/api/addcmt',
            {
            method:http.RequestMethod.POST,
            extraData:{
              username:this.userName,
              content:this.commentContent
            },
            header:{ContentType:'application/json'}
          }
          ).then(res=>{
            AlertDialog.show({message:'评论成功'})
          },(err:BusinessError)=>{
            // 请求错误提醒
            AlertDialog.show({ message: JSON.stringify(err) })
          })
        })
      }
      .padding({left:20,right:20})
      .width('100%')
      Refresh({refreshing:$$this.isRefresh}){
        List(){
          ForEach(this.commentList,(item1:ApifoxModel_commend)=>{
            listItemComp({item:item1})
          })
        }
        .onReachEnd(()=>{
          if (this.isReq==true) return
          this.isReq=true
          this.commentReq.request('https://hmajax.itheima.net/api/cmtlist?num=1')
            .then(res=>{
              this.isReq =false
              this.commentList = (JSON.parse((res.result as string)) as ApifoxModel_List).data
              this.NewcommentList=(JSON.parse((res.result as string)) as ApifoxModel_List).data
              this.commentList.push(...this.NewcommentList)
            })
        })
      }
      .onRefreshing(()=>{
        this.commentReq.request('https://hmajax.itheima.net/api/cmtlist')
          .then(res=>{
            this.commentList = (JSON.parse((res.result as string)) as ApifoxModel_List).data
          })
        this.isRefresh=false
      })
    }
    .height('100%')
    .width('100%')
  }
}

@Component
struct listItemComp {
  @Prop item:ApifoxModel_commend
  build() {
    Row() {
      Image($r('app.media.ic_common_send'))
        .width(50)
        .borderRadius(25)

      Column({ space: 5 }) {
        Text(this.item.username)
          .fontSize(13)
          .fontColor(Color.Gray)
          .textAlign(TextAlign.Start)
          .width('100%')

        Text(this.item.content)
          .textAlign(TextAlign.Start)
          .width('100%')

        Text('2222-2-22')
          .fontSize(13)
          .fontColor(Color.Gray)
          .textAlign(TextAlign.Start)
          .width('100%')

        Divider()
          .strokeWidth(1)
          .margin({ top: 5, bottom: 15 })
      }
      .width('100%')
      .padding({ left: 10, right: 10 })
      .layoutWeight(1)
    }
    .alignItems(VerticalAlign.Top)
  }
}