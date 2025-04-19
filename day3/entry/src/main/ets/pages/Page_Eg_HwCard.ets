@Entry
@Component
struct Page_Eg_HwCard {
  @State message: string = 'Hello World';

  build() {
    Column(){
      Column({space:20}){
        Text('漏洞处理流程')
          .fontSize(30)
          .fontWeight(FontWeight.Bold)
          .fontColor('#fff')
        Text('华为PSIRT按照漏洞处理流程对上报的潜在漏洞进行处理')
          .fontSize(20)
          .fontColor('#fff')
        Button('了解更多')
          .border({
            width:1,
            radius:0,
            color:'#fff',
          })
          .backgroundColor(Color.Transparent)
          .width(150)
      }
      .width('100%')
      .backgroundImage($r('app.media.goods'))
      .backgroundImageSize(ImageSize.Cover)
      .padding(20)
    }
    .width('100%')
    .height('100%')
    .backgroundColor(Color.Gray)
    .padding(10)
  }
}