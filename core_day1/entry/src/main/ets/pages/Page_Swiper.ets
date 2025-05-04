@Entry
@Component
struct Page_Swiper {
  @State message: string = 'Hello World';

  build() {
    Column(){
      // 轮播容器组件
      // Swiper(){组件}
      // 可以设置该容器的尺寸,组件大小会跟随容器大小缩放
      // 可以设置组件大小,会自动撑开容器
      Swiper(){
        Text('1')
          .textAlign(TextAlign.Center)
          .backgroundColor(Color.Brown)
          .fontSize(26)
          .fontColor(Color.White)
        Text('2')
          .textAlign(TextAlign.Center)
          .backgroundColor(Color.Orange)
          .fontSize(26)
          .fontColor(Color.White)
        Text('3')
          .textAlign(TextAlign.Center)
          .backgroundColor(Color.Green)
          .fontSize(26)
          .fontColor(Color.White)
      }
      .width('100%')
      .height(200)
      .backgroundColor(Color.Pink)
    }
    .height('100%')
    .width('100%')
  }
}