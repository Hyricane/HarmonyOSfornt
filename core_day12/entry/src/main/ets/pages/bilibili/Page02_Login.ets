import { bilibili_Pink, User } from './Page01_Home'
import { router } from '@kit.ArkUI'

@Entry
@Component
struct Page02_Login {
  @State userName:string=''
  @State userPwd:string=''
  @StorageLink('user') user:Partial<User>={}

  build() {
    Navigation() {
      Column() {
        Row() {
          Text('账号')
          TextInput({ placeholder: '请输入账号',text:$$this.userName})
            .layoutWeight(1)
            .backgroundColor(Color.Transparent)
        }
        .padding(5)
        .border({ width: { bottom: 1 }, color: '#ccc' })

        Row() {
          Text('密码')
          TextInput({ placeholder: '请输入密码',text:$$this.userPwd})
            .type(InputType.Password)
            .layoutWeight(1)
            .backgroundColor(Color.Transparent)
        }
        .padding(5)
        .border({ width: { bottom: 1 }, color: '#ccc' })

        Button('登录')
          .width('100%')
          .backgroundColor(bilibili_Pink)
          .margin({ top: 40 })
          .onClick(()=>{
            this.user.name=this.userName
            AlertDialog.show({message:this.userName})
            AlertDialog.show({message:this.user.name})
            if (this.user.name=='') {
              AlertDialog.show({message:'请输入用户名'})
              return
            }
            if (this.userPwd=='') {
              AlertDialog.show({message:'请输入密码'})
              return
            }
            router.pushUrl({
              url:'pages/bilibili/Page01_Home'
            })
          })
      }
      .width('100%')
      .height('100%')
      .padding(10)
    }
    .title('用户登录')
    .titleMode(NavigationTitleMode.Mini)

  }
}