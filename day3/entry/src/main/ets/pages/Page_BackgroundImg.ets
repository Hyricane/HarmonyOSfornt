@Entry
@Component
struct Page_BackgroundImg {
  @State message: string = 'Hello World';

  build() {
    Column({space:20}){
      Column(){

      }
      // 背景图
      // .backgroundImage(路径,ImageRepeat.枚举(可选是否重复平铺))
      .backgroundImage(($r('app.media.startIcon')),ImageRepeat.XY)
      .backgroundColor(Color.Orange)
      .width(300)
      .height(300)
      Column(){

      }
      .backgroundColor(Color.Orange)
      .backgroundImage($r('app.media.startIcon'))
      // 图片尺寸
      // 用法1,传入对象,在对象中设置宽高(为保证图片比例,一般只设置一个)
      // .backgroundImageSize({width:数值,height:数值})
      .backgroundImageSize({
        width:100
      })
      // 用法2,使用枚举
      // .backgroundImageSize(ImageSize.枚举)
      .backgroundImageSize(ImageSize.Cover)
      .backgroundImageSize(ImageSize.Contain)
      .width(200)
      .height(100)
      Column(){

      }
      // 背景图位置
      // 用法1,传入对象,在对象中使用坐标定位
      // .backgroundImagePosition({x:数值,y:数值})
      .backgroundImagePosition({
        x:100,
        y:100
      })
      // 用法2,使用枚举 center topStart topEnd start end bottomStart bottomEnd
      // .backgroundImagePosition(Alignment.枚举)
      .backgroundImagePosition(Alignment.Center)
      .backgroundColor(Color.Orange)
      .backgroundImage($r('app.media.startIcon'))
      .width(200)
      .height(200)
    }
    .width('100%')
    .height('100%')
  }
}