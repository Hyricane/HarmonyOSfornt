@Entry
@Component
struct Page_Eg_PhoneCard {
  @State message: string = 'Hello World';

  build() {
    Column(){
      Column({space:10}){
        Image($r('app.media.goods'))
          .width('100%')
        Text('HUAWEI MateX5')
          .fontSize(25)
          .fontWeight(FontWeight.Bold)
          .width('100%')
          .margin({
            bottom:30
          })
          .padding({
            left:10
          })
        Text('￥12999起')
          .margin({
            bottom:20
          })
          .width('100%')
          .padding({
            left:10
          })
        Row({space:20}){
          Text('了解更多>')
          Text('购买>')
        }
        .padding({
          left:10
        })
        .width('100%')
        .margin({
          bottom:20
        })
      }
      .shadow({
        color:Color.Black,
        offsetX:3,
        offsetY:3,
        radius:10
      })
      .backgroundColor('#fff')
      .borderRadius(10)
    }
    .width('100%')
    .height('100%')
    .padding(10)
    .backgroundColor(Color.Gray)
  }
}