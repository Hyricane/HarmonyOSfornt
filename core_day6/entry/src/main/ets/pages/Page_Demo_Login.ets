@Entry
@Component
struct LoginDemo {
  @State second:number = 60
  timeOutId : number | null = null
  isClick : boolean = false
  build() {
    Column() {
      this.titleBuilder()
      TextInput({ placeholder: '请输入手机号' })
        .textInputExtend()
      Divider()
      Row() {
        TextInput({ placeholder: '请输入验证码' })
          .textInputExtend()
          .layoutWeight(1)
        Text(this.isClick?`${this.second.toString()}秒后重新发送`:'点击发送验证码')
          .fontSize(14)
          .fontColor(Color.Gray)
          .onClick(()=>{
            this.isClick = true
            setInterval(()=>{
              this.second -=1
            },1000)
            if (this.second == 0) {
              clearInterval(this.timeOutId)
              this.isClick = false
            }
          })
      }
      .width('100%')

      Divider()

      Button('登录')
        .width('100%')
        .type(ButtonType.Normal)
        .backgroundColor('#ea6051')
        .margin({ top: 50 })

    }
    .padding({ top: 80, left: 40, right: 40 })
    .width('100%')
    .alignItems(HorizontalAlign.Start)
  }

  @Builder
  titleBuilder() {
    Text('短信登录')
      .fontSize(25)
      .fontWeight(600)
      .margin({ bottom: 30 })
  }
}

@Extend(TextInput)
function textInputExtend() {
  .backgroundColor(Color.White)
  .padding({ left: 0, top: 20, bottom: 20 })
  .placeholderColor('#ccc')
}
