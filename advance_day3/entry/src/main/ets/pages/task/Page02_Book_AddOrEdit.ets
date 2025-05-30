import { promptAction } from '@kit.ArkUI';
import http from '@ohos.net.http';
import router from '@ohos.router';
// 导入外号
import { Book, bookReq,creator} from './Page01_Book_Index';


// 编辑页也需要使用。导出
interface AddResponse {
  message: string
  data: Book
}

interface RouterParams {
  id: number
  bookName:string
  publish:string
}


@Entry
@Component
struct Page02_Book_AddOrEdit {
  aboutToAppear(): void {
    let getParams = router.getParams() as Book
    this.bookId=getParams.id
    this.bookname=getParams.bookname
    this.author=getParams.author
    this.publisher=getParams.publisher
  }

  @State bookname: string = ''
  @State author: string = ''
  @State publisher: string = ''
  @State bookId: number = Date.now()

  build() {
    Navigation() {

      Column({ space: 10 }) {
        Row() {
          Text('图书姓名:')
          TextInput({
            placeholder: '请输入图书名字',
            text: $$this.bookname
          })
            .height(30)
            .backgroundColor(Color.Transparent)
            .layoutWeight(1)
            .padding({ left: 10, top: 0, bottom: 0 })
        }

        Divider()
        Row() {
          Text('图书作者:')
          TextInput({
            placeholder: '请输入图书作者',
            text: $$this.author
          })
            .height(30)
            .backgroundColor(Color.Transparent)
            .layoutWeight(1)
            .padding({ left: 10, top: 0, bottom: 0 })
        }

        Divider()
        Row() {
          Text('图书出版社:')
          TextInput({
            placeholder: '请输入图书出版社',
            text: $$this.publisher
          })
            .height(30)
            .backgroundColor(Color.Transparent)
            .layoutWeight(1)
            .padding({ left: 10, top: 0, bottom: 0 })
        }

        Divider()


        Button('保存')
          .width('100%')
          .margin({ top: 20 })
          .type(ButtonType.Normal)
          .borderRadius(10)
          .onClick(async () => {
            // 1. 非空判断
            if (this.bookname == '' || this.author == '' || this.publisher == '') {
              promptAction.showToast({
                message: '书本信息不能为空，请检查哦~ ღ( ´･ᴗ･` )比心'
              })
              // 提示用户
              return
            }
            // TODO  根据新增和编辑 调用不同的接口
            if (this.bookId==0) {
              let responds = await bookReq.request('https://hmajax.itheima.net/api/books',{
                method:http.RequestMethod.POST,
                extraData:{
                  bookname:this.bookname,
                  author: this.author,
                  publisher: this.publisher,
                  creator:creator
                },
                header:{ContentType:'application/json'}
              })
              let respondsData = JSON.parse(responds.result as string) as AddResponse
              promptAction.showToast({message:respondsData.message})
              router.back()
            }else{
              let responds = await bookReq.request(`https://hmajax.itheima.net/api/books/${this.bookId}`,{
                method:http.RequestMethod.PUT,
                extraData:{
                  bookname:this.bookname,
                  author: this.author,
                  publisher: this.publisher,
                  creator:creator
                },
                header:{ContentType:'application/json'}
              })
              let respondsData = JSON.parse(responds.result as string) as AddResponse
              promptAction.showToast({message:respondsData.message})
              router.back()
            }

          })

      }
      .padding(20)
    }
    .title(this.bookId==0 ? '新增图书' : '修改图书') // TODO 根据 id 决定标题显示的文本
    .titleMode(NavigationTitleMode.Mini)
    .backButtonIcon($r('app.media.ic_public_arrow_left'))
  }
}