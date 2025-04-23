@Entry
@Component
struct Page_Task_GaussDB {
  @State message: string = 'Hello World';

  build() {
    Column(){
      Column({space:10}){
        Image($r('app.media.Task_openGauss'))
          .width(160)
          .borderRadius(10)
        Text('华为高斯GaussDB数据库培训，涵盖各大高校经zsbdzsbdzsbdzsbdzsbdzsbdzsbdzsbdzsbdzsbd')
          .maxLines(2)
          .textOverflow({
            overflow:TextOverflow.Ellipsis
          })
          .lineHeight(20)
          .fontSize(14)
        Text('9999人观看')
          .fontSize(12)
          .fontColor('#fff')
          .height(20)
          .padding({
            left:15,
            right:15
          })
          .backgroundColor('rgba(0,0,0,0.5)')
          .borderRadius(10)
          .position({
            x:60,
            y:15
          })
      }
      .width('50%')
    }
    .width('100%')
    .height('100%')
  }
}