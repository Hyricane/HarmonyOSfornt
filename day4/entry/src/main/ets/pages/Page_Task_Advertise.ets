@Entry
@Component
struct Page_Task_Advertise {
  @State message: string = 'Hello World';

  build() {
    Column(){
      Flex({
        direction:FlexDirection.Column
      }){
        Row(){
          //left
          Row({space:15}){
            Image($r('app.media.startIcon'))
              .width(30)
              .aspectRatio(1)
            Text('广告投放')
              .fontColor('#fff')
          }
          Image($r('sys.media.ohos_ic_public_arrow_right'))
            .width(20)
            .aspectRatio(1)
            .fillColor('#fff')
        }
        .justifyContent(FlexAlign.SpaceBetween)
        .backgroundImage($r('app.media.background'))
        .padding({
          left:16,
          right:16
        })
        .width(268)
        .height(64)
        Text('映大数据、智能算法、营销自动化等16技术及优质媒体资源，为客户提供包括腾讯广告、小红书、快手、谷歌等300海内外营销服务，并打通引流-转化复购的营销闭环，打造私域运营及短视频、直播服务，助力品牌实现品效合一的全链路营销增长。')
          .fontColor('#5a5b5f')
          .fontSize(13)
          .lineHeight(22)
          .margin(16)
      }
      .backgroundColor('#e6e5ea')
      .height(300)
      .width(268)
    }
    .height('100%')
    .width('100%')
    .backgroundColor('#ccc')
  }
}