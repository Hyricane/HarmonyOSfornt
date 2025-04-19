@Entry
@Component
struct Page_Eg_Layout_Login {
  @State message: string = 'Hello World';

  build() {
    Column(){
      Image($r('app.media.test'))
        .width(100)
        .aspectRatio(1)
        .objectFit(ImageFit.Cover)
        .borderRadius(50)
      Text('大王叫我来巡山')
        .fontWeight(FontWeight.Bold)
        .fontSize(18)
        .margin({
          top:20
        })
      Button('QQ登录')
        .width('100%')
        .margin({
          top:40
        })
      Button('微信登录')
        .width('100%')
        .margin({
          top:10
        })
        .backgroundColor('#DDDDDD')
        .fontColor(Color.Black)
    }
    .padding(20)
  }
}