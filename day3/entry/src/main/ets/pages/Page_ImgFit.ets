@Entry
@Component
struct Page_ImgFit {
  @State message: string = 'Hello World';

  build() {
    Column(){
      Column(){
        Image($r('app.media.startIcon'))
          // 图片等比缩放直到有一边接触到容器边界 容器留白 图片完全显示
          .objectFit(ImageFit.Contain)
          // 图片等比缩放直到完全充满容器 容器不留白 图片显示不完全
          .objectFit(ImageFit.Cover)
          // 图片不等比缩放至完全填满容器
          .objectFit(ImageFit.Fill)
          // 默认，保持图片原有比例
          .objectFit(ImageFit.Auto)
      }
      .backgroundColor(Color.Pink)
      .width(200)
      .height(300)
    }
    .width('100%')
    .height('100%')
  }
}