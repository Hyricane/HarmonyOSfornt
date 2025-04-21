@Entry
@Component
struct Page_Task_JDLogin {
  @State message: string = 'Hello World';

  build() {
    Column(){
      // 主体
      Column(){
        // 头部
        Row(){
          Image($r('sys.media.ohos_ic_public_close'))
            .width(20)
            .aspectRatio(1)
          Text('帮助')
            .fontColor(Color.Gray)
        }
        .width('100%')
        .justifyContent(FlexAlign.SpaceBetween)
        // logo
        Image($r('app.media.logo'))
          .width('250')
          .aspectRatio(1)
          // .backgroundColor(Color.Gray)//标记颜色
        // 用户操作区
        Column({space:20}){
          TextInput({
            placeholder:'国家/地区                               中国(+86)>'
          })
          TextInput({
            placeholder:'请输入手机号'
          })
          // 协议
          Row(){
            Checkbox()
              .margin({
                top:-13,
                right:5
              })
              .width(10)
              .aspectRatio(1)
            // 内容
            Flex({
              direction:FlexDirection.Row,
              wrap:FlexWrap.Wrap,
            }){
              Text('我已经阅读同意')
                .lineHeight(20)
                .fontSize(12)
              // 协议
              Row({space:2}){
                Text('《京东隐私政策》')
                  .lineHeight(20)
                  .fontSize(12)
                  .fontColor(Color.Blue)
                Text('《京东用户服务协议》')
                  .lineHeight(20)
                  .fontSize(12)
                  .fontColor(Color.Blue)
              }
              Text('未注册的手机号将自动创建京东账号')
                .lineHeight(20)
                .fontSize(12)
            }
          }
        }
        Button('登录')
          .width('100%')
          .backgroundColor('#D00133')
          .margin({
            top:25,
            bottom:15
          })
        Row({space:25}){
          Text('新用户注册')
            .fontSize(14)
            .fontColor(Color.Gray)
          Text('账户密码登录')
            .fontSize(14)
            .fontColor(Color.Gray)
          Text('无法登录')
            .fontSize(14)
            .fontColor(Color.Gray)
        }
        // 底部
        Column(){
          Text('其他登录方式')
            .fontSize(14)
            .fontColor(Color.Gray)
            .lineHeight(22)
            .margin({
              bottom:28
            })
          Flex({
            justifyContent:FlexAlign.SpaceEvenly
          }){
            Image($r('app.media.huawei'))
              .width(34)
              .aspectRatio(1)
            Image($r('app.media.huawei'))
              .width(34)
              .aspectRatio(1)
            Image($r('app.media.huawei'))
              .width(34)
              .aspectRatio(1)
            Image($r('app.media.huawei'))
              .width(34)
              .aspectRatio(1)
          }
          .width('100%')
        }
        .width('100%')
        .margin({
          top:42
        })
      }
      // .backgroundColor(Color.Pink)//标记颜色
      .padding({
        top:20,
        left:20,
        right:20,
        bottom:50
      })
      .width('100%')
    }
    .width('100%')
    .height('100%')
  }
}