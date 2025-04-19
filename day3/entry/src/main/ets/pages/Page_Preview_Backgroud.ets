@Entry
@Component
struct Page_Preview_Backgroud {
  @State message: string = 'Hello World';

  build() {
    Column(){
        Text('背景色')
          .width(200)
          .height(200)
          // backgroundColor(枚举 或 '16进制代码')
          .backgroundColor(Color.Pink)
        Text('背景图片')
          .width(200)
          .height(200)
          // 背景图片
          // .backgroundImage(路径,ImageRepeat.枚举//平铺方式)
          .backgroundImage($r('app.media.background'),ImageRepeat.NoRepeat)
      Row(){

      }
      .width(200)
      .height(200)
      .border({
        width:1
      })
      .backgroundImage($r('app.media.test'))
      // 背景图尺寸
      // .backgroundImageSize(ImageSize.枚举)
      // Cover:等比缩放至完全覆盖容器,图片可能会显示不全
      .backgroundImageSize(ImageSize.Cover)
      //Contain:等比缩放至某一边接触容器边界,图片完整显示,容器可能会留白
      .backgroundImageSize(ImageSize.Contain)
      // 默认,图片原始尺寸
      .backgroundImageSize(ImageSize.Auto)

      // 背景图片位置
      // 使用x,y坐标
      .backgroundImagePosition({x: 100,y: 100})
      // 顶部居中
      .backgroundImagePosition(Alignment.Top)
      // 顶部居左(默认位置)
      .backgroundImagePosition(Alignment.TopStart)
      // 左侧居中
      .backgroundImagePosition(Alignment.Start)
      // 盒子正中
      .backgroundImagePosition(Alignment.Center)
      // 右侧居中
      .backgroundImagePosition(Alignment.End)
      // 底部居左
      .backgroundImagePosition(Alignment.BottomStart)
      // 底部居中
      .backgroundImagePosition(Alignment.Bottom)
      // 底部居右
      .backgroundImagePosition(Alignment.BottomEnd)
    }
  }
}