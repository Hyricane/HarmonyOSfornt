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
      .autoPlay(true) //自动轮播
      .loop(true) //循环轮播(默认为true)
      .interval(1000) //间隔时间,单位毫秒,默认3000
      .vertical(false) //垂直滑动
      .indicator(false) //关闭指示器
      .indicator(Indicator.digit()) //数字指示器
      .indicator(
        Indicator.dot()
          // 指示器样式
          .itemWidth(10)
          .itemHeight(10)
          .color(Color.Pink)
          // 指示器选中时的样式
          .selectedItemWidth(16)
          .selectedItemHeight(10)
          .selectedColor(Color.Blue)
        // 指示器位置
          .right(10)
          .top(10)
      ) //圆点指示器(默认)
    }
    .height('100%')
    .width('100%')
  }
}