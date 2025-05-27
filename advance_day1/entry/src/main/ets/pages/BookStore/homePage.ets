import { promptAction, router } from '@kit.ArkUI'
import { http } from '@kit.NetworkKit';

export interface ApifoxModel {
  /**
   * 响应数组
   */
  data: Book[];
  /**
   * 响应消息
   */
  message: string;
}


export interface Book {
  id: number
  bookname: string
  author: string
  publisher: string
}

export const creator: string = '贾凯哲'

export const  bookReq = http.createHttp()
@Entry
@Component
struct homePage {
  creator: string = creator
  @State books: Book[] = []
  @State isLoading: boolean = true

  onPageShow(): void {
    this.isLoading = true
    bookReq.request('https://hmajax.itheima.net/api/books?creator='+encodeURIComponent(this.creator))
      .then(res=>{
        const req = JSON.parse(res.result as string) as ApifoxModel
        this.books = req.data
        this.isLoading = false
      })
  }

  build() {
      Column() {
        // 头部
        this.HeaderBuilder()
        if (this.isLoading==true){
          //加载中的图标
          LoadingProgress()
            .width(50)
            .transition(TransitionEffect.asymmetric(
              TransitionEffect.IDENTITY,
              TransitionEffect.OPACITY.animation({duration:500}))
            )
        }
        List({ space: 15 }) {
          ForEach(this.books, (item: Book) => {
            ListItem() {
              bookItem({ data: item })
            }
            .swipeAction({
              end: () => {
                this.itemEnd(item)
              },
              edgeEffect: SwipeEdgeEffect.Spring
            })
            .onClick(() => {

            })
          })
        }
        .padding(20)
      }
      .height('100%')
      .width('100%')
  }

  @Builder
  HeaderBuilder() {
    Row() {
      Image($r('app.media.ic_public_drawer_filled'))
        .width(20);

      Text('我的书架')
        .fontSize(25)

      Image($r('app.media.ic_public_add'))
        .width(20)
        .onClick(() => {
          router.pushUrl({
            url: 'pages/BookStore/addPage'
          })
        })
    }
    .width('100%')
    .justifyContent(FlexAlign.SpaceBetween)
    .height(60)
    .padding(10)
    .border({ width: { bottom: 2 }, color: '#f0f0f0' })
    .backgroundColor(Color.White)
  }

  @Builder
  itemEnd(item: Book) {
    Row() {
      Button('删除')
        .type(ButtonType.Normal)
        .backgroundColor('#da3231')
        .onClick(() => {
          promptAction.showDialog({
            title:'温馨提示',
            message:'确实删除吗',
            buttons:[{text:'确认',color:'#AA3F3C'},{text:'取消',color:'#000'}]
          }).then((res)=>{
            if (res.index==0) {
              bookReq.request(`https://hmajax.itheima.net/api/books/${item.id}`,
                {
                  method:http.RequestMethod.DELETE
                }).then((res)=>{
                promptAction.showToast({message:(JSON.parse(res.result as string) as ApifoxModel).message})
              })
              this.onPageShow()
            }
          })
        })
        .height('100%')
    }

  }
}

@Component
struct bookItem {
  data: Partial<Book> = {}

  build() {
    Row({ space: 10 }) {
      Image($r('app.media.ic_public_cover'))
        .width(108)
        .height(108)
      Column({ space: 5 }) {

        Text('书名：' + this.data.bookname)
          .fontSize(20)
        Text('作者：' + this.data.author)
          .fontSize(14)
          .fontColor(Color.Gray)
        Blank()
        Text('出版社: ' + this.data.publisher)
          .fontSize(14)
          .fontColor(Color.Gray)
      }
      .padding({ top: 10, bottom: 10 })
      .height(108)
      .alignItems(HorizontalAlign.Start)
    }
    .onClick(()=>{
      router.pushUrl({
        url:'pages/BookStore/EditPage',
        params:{
          id:this.data.id
        }
      })
    })
  }
}