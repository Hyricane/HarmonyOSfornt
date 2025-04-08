import { Size } from '@ohos/hypium'

@Entry
@Component
struct Index {
  build() {
    Column(){
      Image($r('app.media.touxiang'))
        .width(100)
        .margin({
          bottom:40
        })
      Text('用户名')
        .margin({
          bottom:15
        })
        .fontSize('40')
      Button('微信登录')
        .width('100%')
        .margin({
          bottom:10
        })
      Button('QQ登录')
        .width('100%')
        .backgroundColor(Color.Grey)
    }
    .padding('20px')
    .width('100%')
  }
}
