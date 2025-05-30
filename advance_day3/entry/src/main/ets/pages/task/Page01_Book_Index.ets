import { promptAction, router } from '@kit.ArkUI'
import http from '@ohos.net.http'


interface BookResponse {
  message: string
  data: Book[]
}

export interface Book {
  id: number
  bookname: string
  author: string
  publisher: string
  creator?:string
}

// 删除的响应信息
interface BookId {
  id: string
}

interface DeleteResponse {
  message: string
  data: BookId
}

// 提取的 外号的变量
export const creator: string = 'ycd2'

export const bookReq = http.createHttp()

@Entry
@Component
struct Page01_Book_Index {
  async onPageShow(){
    let res = await bookReq.request('https://hmajax.itheima.net/api/books?creator='+encodeURIComponent(creator))
    let respondsList = (JSON.parse(res.result as string ) as BookResponse).data
    this.books = respondsList
  }
  @State books: Book[] = []
  @State isLoading: boolean = false
  // 提取请求对象
  req = http.createHttp()

  build() {
    Column() {
      // 头部
      this.HeaderBuilder()

      // 没有数据 loading
      if (this.books.length == 0) {
        Text('空空如也~')
      } else {
        // 有数据 渲染
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
              // 添加跳转逻辑
              router.pushUrl({
                url:'pages/task/Page02_Book_AddOrEdit',
                params:{
                  id:item.id,
                  bookname:item.bookname,
                  publisher:item.publisher,
                  author:item.author
                }
              })
            })
          })
        }
        .padding(20)
      }


    }
    .height('100%')
    .width('100%')
  }

  @Builder
  HeaderBuilder() {
    Row() {
      // 顶部左侧
      Image($r('app.media.ic_public_drawer_filled'))
        .width(20)
        .onClick(() => {
          promptAction.showDialog({
            title: '友情提示',
            message: '你真要全部删除吗',
            buttons: [
              {
                text: '狠心删除',
                color: '#000000'
              },
              {
                text: '继续保留',
                color: '#ec6073'
              }
            ],
          })
            .then(data => {
              // TODO 添加清空逻辑
              if (data.index==0) {
                for (const element of this.books) {
                  this.req.request('https://hmajax.itheima.net/api/books/'+element.id)
                    .then(res=>{
                      let obj = JSON.parse(res.result as string) as BookResponse
                      console.log('test',obj.message)
                      AlertDialog.show({message:'test'})
                    })
                }
                this.onPageShow()
              }
            })
        })


      Text('我的书架')
        .fontSize(25)

      Image($r('app.media.ic_public_add'))
        .width(20)
        .onClick(() => {
          router.pushUrl({
            url:'pages/task/Page02_Book_AddOrEdit',
            params:{
              id:0,
              bookname:'',
              publisher:'',
              author:''
            }
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
  // 传递参数的时候，如果可以，一般会传递整个对象，方便后续逻辑的调整
  // 如果只传递 id，那么提示书名的功能就不太好做了
  itemEnd(item: Book) {
    Row() {
      Button('删除')
        .type(ButtonType.Normal)
        .backgroundColor('#da3231')
        .onClick(async  () => {
          // 文档中，有基础的代码模版，直接C+V
         const dialog_p =await  promptAction.showDialog({
            title: '友情提示！',
            message: `你真的要删掉 ${item.bookname} 这本书吗，(╥╯^╰╥)`,
            buttons: [
              {
                text: '取消',
                color: '#000'
              },
              {
                text: '确认',
                color: '#ae2827'
              }
            ],
          })
         if (dialog_p.index==1){
           let res = await bookReq.request(`https://hmajax.itheima.net/api/books/${item.id}`,{
                 method:http.RequestMethod.DELETE })
           let respondsMsg = (JSON.parse(res.result as string) as DeleteResponse).message
               promptAction.showToast({message:respondsMsg})
               this.onPageShow()
         }
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
  }
}