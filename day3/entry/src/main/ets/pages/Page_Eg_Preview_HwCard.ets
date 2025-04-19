@Entry
@Component
struct Page_Eg_Preview_HwCard {
  @State message: string = 'Hello World';

  build() {
    Column() {
      Text('漏洞处理流程')
        .fontColor('#fff')
        .fontSize(30)
        .fontWeight(FontWeight.Bold)
        .margin({
          top:30,
          bottom:20
        })
      Text('华为PSIRT按照漏洞处理流程对上报的潜在漏洞进行处理')
        .fontColor('#fff')
        .fontSize(20)
        .fontWeight(FontWeight.Bold)
        .margin({
          bottom:20
        })
      Button('了解更多')
        .width(150)
        .height(50)
        .backgroundColor(Color.Transparent)
        .border({
          width:2,
          color:'#fff'
        })
        .borderRadius(0)
    }
    .padding(20)
    .width('100%')
    .height(300)
    .backgroundColor(Color.Yellow)
    .backgroundImage($r('app.media.test'))
    .backgroundImageSize(ImageSize.Cover)
  }
}