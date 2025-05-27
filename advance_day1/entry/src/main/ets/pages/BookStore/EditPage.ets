import { promptAction, router } from '@kit.ArkUI'
import { bookReq,creator,ApifoxModel,Book} from './homePage'
import http from '@ohos.net.http'

interface GetBookResponse {
  message: string
  data: Book
}
interface GetId{
  id:number
}
@Entry
@Component
struct EditPage {
  @State bookname: string = ''
  @State author: string = ''
  @State publisher: string = ''
  @State book_id: number | null = null

  aboutToAppear(): void {
    this.book_id = (router.getParams() as Book).id

    bookReq.request(`https://hmajax.itheima.net/api/books/${this.book_id}`,
      {method:http.RequestMethod.GET})
      .then(res=>{
        let obj = (JSON.parse(res.result as string) as GetBookResponse).data
        this.bookname = obj.bookname
        this.author = obj.author
        this.publisher = obj.publisher
      })
  }

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
          .onClick(() => {
            bookReq.request(`https://hmajax.itheima.net/api/books/${this.book_id}`,{
              method:http.RequestMethod.PUT,
              header:{ContentType:'application/json'},
              extraData:{
                bookname:this.bookname,
                author:this.author,
                publisher:this.publisher,
                creator:creator
              }
            })
              .then((res)=>{
                promptAction.showToast({message:(JSON.parse(res.result as string) as ApifoxModel).message})
                router.back()
              })
          })

      }
      .padding(20)
    }
    .title('修改图书')
    .titleMode(NavigationTitleMode.Mini)
    .backButtonIcon($r('app.media.ic_public_arrow_left'))
  }
}