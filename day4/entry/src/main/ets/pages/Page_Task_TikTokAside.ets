@Entry
@Component
struct Page_Task_TikTokAside {

  build() {
    Column(){
      Column(){
        Column({space:5}){
          Image($r('sys.media.ohos_ic_public_hang_up'))
            .width(30)
            .fillColor('#fff')
          Text('12.9万')
            .fontColor('#fff')
            .fontSize(12)
        }
        // 组件2
        Column({space:5}){
          Image($r('sys.media.ohos_ic_public_web'))
            .width(30)
            .fillColor('#fff')
          Text('1.2万')
            .fontColor('#fff')
            .fontSize(12)
        }
        // 3
        Column({space:5}){
          Image($r('sys.media.ohos_ic_public_sound_off'))
            .width(30)
            .fillColor('#fff')
          Text('2.3万')
            .fontColor('#fff')
            .fontSize(12)
        }
        // 4
        Column({space:5}){
          Image($r('sys.media.rectangle_and_line_horizontal_and_rectangle_filled'))
            .width(30)
            .fillColor('#fff')
          Text('少推荐')
            .fontColor('#fff')
            .fontSize(12)
        }
        // 5
        Column({space:5}){
          Image($r('sys.media.ohos_ic_public_fail'))
            .width(30)
            .fillColor('#fff')
          Text('8.5万')
            .fontColor('#fff')
            .fontSize(12)
        }
      }
      .height(350)
      .justifyContent(FlexAlign.SpaceBetween)
      .padding(10)
      .backgroundColor('#010101')
    }
    .justifyContent(FlexAlign.Center)
    .height('100%')
  }
}