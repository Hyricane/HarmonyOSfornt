@Entry
@Component
struct Page_AltImg {
  build() {
    Column(){
      Column(){
        Image('http://gips3.baidu.com/it/u=1821127123,1149655687&fm=3028&app=3028&f=JPEG&fmt=auto?w=720&h=1280')
          // 网图加载时的占位图,只能时本地图片
          .alt($r('app.media.goods'))
      }
      .width(200)
      .aspectRatio(1)
    }
    .width('100%')
    .height('100%')
  }
}