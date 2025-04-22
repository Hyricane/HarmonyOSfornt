@Entry
@Component
struct Page_Demo_Postion {
  @State message: string = 'Hello World';

  build() {
    Column(){
      Image($r('app.media.Demo_Moco'))
        .width('50%')
        .borderRadius(10)
      Row(){
        Image($r('sys.media.ohos_ic_public_device_earphone_filled'))
          .width(20)
          .fillColor('#15BCFD')
          .aspectRatio(1)
        Text('飞狗MOCO')
          .fontWeight(FontWeight.Bold)
      }
      .padding(10)
      .width('50%')
      Text('VIP')
        .fontColor(Color.Yellow)
        .fontSize(12)
        .fontStyle(FontStyle.Italic)
        .backgroundColor(Color.Orange)
        .fontWeight(FontWeight.Bold)
        .padding({
          left:6,
          right:6,
          top:3,
          bottom:3
        })
        .border({
          radius:{topLeft:10,bottomRight:10},
          width:3,
          color:Color.Yellow
        })
        .position({
          x:0,
          y:0
        })
    }
    .borderRadius(10)
  }
}