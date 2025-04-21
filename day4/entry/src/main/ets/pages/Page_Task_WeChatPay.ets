@Entry
@Component
struct Page_Task {
  @State message: string = 'Hello World';

  build() {
    Column(){
     Row(){
       Row({space:10}){
         Image($r('app.media.Task_WechatPay'))
           .width(50)
           .aspectRatio(1)
           .borderRadius(3)
         Column(){
           Text('微信支付')
             .fontSize(20)
           Text('已支付￥13.00')
             .fontColor('#ccc')
         }
         .height(50)
         .justifyContent(FlexAlign.SpaceBetween)
         .alignItems(HorizontalAlign.Start)
       }
       Text('08:52')
         .fontSize(12)
         .fontColor('#ccc')
         .alignSelf(ItemAlign.Start)
     }
     .width('100%')
     .justifyContent(FlexAlign.SpaceBetween)
     .padding(10)
    }
  }
}