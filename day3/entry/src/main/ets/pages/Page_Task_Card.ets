@Entry
@Component
struct Page_Task_Card {
  @State message: string = 'Hello World';

  build() {
    Column(){
      Column({space:5}){
        Image($r('app.media.goods'))
          .aspectRatio(2)
        Text('AI大模型训练')
          .fontWeight(FontWeight.Bold)
          .width('100%')
        Row({space:5}){
          Text('￥240.00/年')
            .fontSize(20)
            .fontColor('#FF1839')
          Text('￥480.00/年')
            .decoration({
              type:TextDecorationType.LineThrough,
              color:'#ccc'
            })
            .fontStyle(FontStyle.Italic)
            .fontColor('#ccc')
            .fontSize(15)
          Text('5折')
            .backgroundColor('#FF1839')
            .fontColor('#fff')
            .width(35)
            .textAlign(TextAlign.Center)
        }
        .width('100%')
      }
      .width('100%')
      .padding(10)
    }
    .width('100%')
    .height('100%')
  }
}