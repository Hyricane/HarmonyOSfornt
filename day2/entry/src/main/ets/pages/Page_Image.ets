@Entry
@Component
struct Page_Image {
  @State message: string = 'Hello World';

  build() {
    Column(){
      // 使用$r函数来快速定位到media文件夹
      Image($r('app.media.test'))
        .width(300)

    }
  }
}