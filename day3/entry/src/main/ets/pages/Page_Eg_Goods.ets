@Entry
@Component
struct Page_Eg_Goods {
  @State message: string = 'Hello World';

  build() {
    Column(){
      Column(){
        Image($r('app.media.goods'))
          .width('100%')
          .borderRadius({
            topLeft:10,
            topRight:10
          })
          Text('磁力片。工厂直发磁力王。100片，尺寸7.5cm 可兼容其他品牌')
            .fontSize(25)
            .maxLines(2)
            .textOverflow({
              overflow:TextOverflow.Ellipsis
            })
            .lineHeight(35)
            .padding(10)
        Text('￥87')
          .fontSize(25)
          .fontColor('#B51A30')
          .padding({
            left:10,
            bottom:20
          })
          .width('100%')
      }
      .width('100%')
      .borderRadius(20)
      .backgroundColor('#fff')
    }
    .width('100%')
    .height('100%')
    .padding(10)
    .backgroundColor(Color.Gray)
  }
}