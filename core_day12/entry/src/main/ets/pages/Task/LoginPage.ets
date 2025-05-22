import router from '@ohos.router'

export interface User{
  userCount:string,
  userPwd:string,
  LoginDateYear:number,
  LoginDateMonth:number,
  LoginDateDay:number,
}

AppStorage.setOrCreate('user',{
  userCount:'123456',
  userPwd:'123456',
})

@Entry
@Component
struct LoginPage {
  @StorageLink('user') user:Partial<User>={}
  @State
  username: string = ''
  @State
  password: string = ''

  @Styles
  inputStyle() {
    .margin({ bottom: 15 })
    .height(44)
    .borderRadius(2)
    .backgroundColor('#ffffff')
    .border({ width: { bottom: 0.5 }, color: '#e4e4e4' })
    .padding({ left: 0 })
  }

  build() {

    Scroll() {
      Flex({ direction: FlexDirection.Column, alignItems: ItemAlign.Center }) {
        Column() {
          Image($r('app.media.logo'))
            .width((120))
            .height((120))
          Text('面试宝典')
            .fontSize((28))
            .margin({ bottom: (15) })
          Text('搞定企业面试真题，就用面试宝典')
            .fontSize((14))
            .fontColor('#979797')
        }
        .padding(20)

        Column() {
          TextInput({ placeholder: '请输入用户名', text: $$this.username })
            .inputStyle()
            .placeholderColor('#C3C3C5')
            .caretColor('#fa711d')
          TextInput({ placeholder: '请输入密码', text: $$this.password, })
            .type(InputType.Password)
            .showPasswordIcon(false)
            .inputStyle()
            .placeholderColor('#C3C3C5')
            .caretColor('#fa711d')

          Button({ type: ButtonType.Normal }) {
            Text('立即登录')
              .fontColor('#ffffff')
          }
          .width('100%')
          .backgroundColor('none')
          .borderRadius((4))
          .height((44))
          .linearGradient({
            direction: GradientDirection.Right,
            colors: [['#fc9c1c', 0], ['#fa711d', 1]]
          })
          .stateEffect(false)
          .onClick(() => {
            // TODO:编写登录逻辑
            if (this.username=='') {
              AlertDialog.show({message:'请输入用户名'})
              return
            }
            if (this.password==''||this.password!='123456') {
              AlertDialog.show({message:'密码错误'})
              return
            }
            this.user.userCount = this.username
            this.user.userPwd = this.password
            this.user.LoginDateYear = new Date().getFullYear()
            this.user.LoginDateMonth = new Date().getMonth()+1
            this.user.LoginDateDay = new Date().getDay()
            router.pushUrl({url:'pages/Task/MyCenterPage'})
          })
        }
        .padding((30))

        Column() {
          Text('其他登录方式')
            .fontSize((14))
            .fontColor('#979797')
        }
        .padding({ top: (70), bottom: (100) })
      }
    }
  }
}
