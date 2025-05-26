import { http } from '@kit.NetworkKit'
import { bookReq,creator,ApifoxModel} from './homePage'
import { router } from '@kit.ArkUI'


@Entry
@Component
struct addPage {
  @State bookname: string = ''
  @State author: string = ''
  @State publisher: string = ''

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
            bookReq.request('https://hmajax.itheima.net/api/books',{
              method:http.RequestMethod.POST,
              extraData:{
                bookname:this.bookname,
                author:this.author,
                publisher:this.publisher,
                creator:creator
              },
              header: { ContentType: 'application/json' }
            }).then((res)=>{
              AlertDialog.show({message:(JSON.parse(res.result as string) as ApifoxModel).message})
            })
            router.back()
          })

      }
      .padding(20)
    }
    .title('新增图书')
    .titleMode(NavigationTitleMode.Mini)
    .backButtonIcon($r('app.media.ic_public_arrow_left'))
  }
}