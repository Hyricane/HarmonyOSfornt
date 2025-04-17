@Entry
@Component
struct Page_ImgArrtribute {
  @State message: string = 'Hello World';

  build() {
    Column(){
      Image($r('app.media.test'))
        //宽高比
        .aspectRatio(1)
        // 占位图,图片加载时显示,仅支持本地图片
        .alt($r('app.media.background'))
        // 图片缩放
        // .objectFit(ImageFit.枚举名)
        // Contain:等比缩放,图片边界到达容器边界时停止,图片完全显示,容器会有留白
        .objectFit(ImageFit.Contain)
        // 等比缩放,一直缩放知道填充整个容器,图片可能会显示不全
        .objectFit(ImageFit.Cover)
        // 不等比缩放,直到填满整个容器
        .objectFit(ImageFit.Fill)
    }
    .width(300)
    .height(300)
    .backgroundColor(Color.Pink)
  }
}