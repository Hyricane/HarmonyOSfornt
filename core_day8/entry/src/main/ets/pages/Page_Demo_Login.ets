@Entry
@Component
struct LoginDemo {
  @State time: number = 0
  @State phoneNum : string = ''
  @State checkCode : string = ''
  build() {
    Column() {
      this.titleBuilder()
      TextInput({ placeholder: '请输入手机号',text:$$this.phoneNum})
        .backgroundColor(Color.White)
        .padding({ left: 0, top: 20, bottom: 20 })
        .placeholderColor('#ccc')
      Divider()
      Row() {
        TextInput({ placeholder: '请输入验证码',text:$$this.checkCode})
          .backgroundColor(Color.White)
          .padding({ left: 0, top: 20, bottom: 20 })
          .placeholderColor('#ccc')
          .layoutWeight(1)
        Text(this.time == 0 ? '发送验证码' : `${this.time}秒后获取`)
          .fontSize(14)
          .fontColor(Color.Gray)
          .onClick(() => {
            // 避免重复点击
            if (this.time != 0) {
              // return 会阻断后续代码执行
              return
            }

            // 延迟获取验证码
            setTimeout(() => {
              const code = Math.floor(1000 + Math.random() * 9000)
              // console.log('code:', code)
              AlertDialog.show({
                message: code.toString()
              })
            }, 2000)

            // 修改 倒计时时间
            this.time = 5

            const timeId = setInterval(() => {
              this.time--
              // 到了 0 关闭定时器
              if (this.time == 0) {
                clearInterval(timeId)
              }
            }, 1000)


          })
      }
      .width('100%')

      Divider()

      Button('登录')
        .width('100%')
        .type(ButtonType.Normal)
        .backgroundColor('#ea6051')
        .margin({ top: 50 })
        .onClick(()=>{
          if (this.phoneNum=='') {
            AlertDialog.show({message:'输入手机号'})
            return
          }
          const reg_PhoneNum=/^1[3-9]\d{9}$/
          if (reg_PhoneNum.test(this.phoneNum)==false) {
            AlertDialog.show({message:'请输入正确格式'})
            return
          }
          if (this.checkCode=='') {
            AlertDialog.show({message:'请输入验证码'})
            return
          }
          const reg_checkNum = /^\d{4}$/
          if (reg_checkNum.test(this.checkCode)==false) {
            AlertDialog.show({message:'验证码错误'})
            return
          }
          AlertDialog.show({message:'登录成功'})
        })

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

