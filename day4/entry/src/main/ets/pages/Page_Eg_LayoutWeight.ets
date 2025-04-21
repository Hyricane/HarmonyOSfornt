@Entry
@Component
struct Page_Eg_LayoutWeight {
  @State message: string = 'Hello World';

  build() {
    Column({space:20}){
      Row({space:5}){
        Image($r('app.media.Eg_Dewu'))
          .width(30)
          .aspectRatio(1)
          .borderRadius(15)
        Text('插画设计师')
          .layoutWeight(1)
        Button('关注')
          .border({
            radius:10,
            width:2,
            color:'#ccc'
          })
          .backgroundColor(Color.Transparent)
          .fontColor('#ccc')
      }
      .backgroundColor('#fff')
      Row({space:10}){
        Column({space:48}){
          Text('第五个国际数学日，全世界和数据一起玩儿')
          Row(){
            Text('中国青年网 昨天')
              .fontSize(12)
              .fontColor(Color.Gray)
            Image($r('sys.media.ohos_ic_public_close'))
              .width(16)
              .aspectRatio(1)
              .fillColor(Color.Gray)
          }
          .width('100%')
          .justifyContent(FlexAlign.SpaceBetween)
        }
        .layoutWeight(1)
        Image($r('app.media.Eg_Dewu'))
          .width(100)
      }
      .padding(10)
      .backgroundColor('#fff')
    }
    .height(300)
    .backgroundColor('#ccc')
    .padding(10)
  }
}