@Entry
@Component
struct Pag_Eg_QQMusicLogin {
  @State message: string = 'Hello World';

  build() {
   Column(){
     Column(){
       Image($r('app.media.JayChou'))
         .width(100)
         .aspectRatio(1)
         .borderRadius(50)
         .margin({
           bottom:10
         })
       Text('大王叫我来巡山')
         .fontWeight(FontWeight.Bold)
         .margin({
           bottom:30
         })
       Button('QQ登录')
         .width('100%')
         .margin({
           bottom:10
         })
       Button('微信登录')
         .width('100%')
         .backgroundColor('#ccc')
         .fontColor(Color.Black)
     }
     .padding(20)
   }
   .width('100%')
    .height('100%')
  }
}