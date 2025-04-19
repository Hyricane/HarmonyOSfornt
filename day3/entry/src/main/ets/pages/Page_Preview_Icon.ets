@Entry
@Component
struct Page_Preview_Icon {
  @State message: string = 'Hello World';

  build() {
    Column(){
      //svg图标,使用方法同图片
      Image($r('app.media.ic_public_input_search'))
        .width(100)
        .aspectRatio(1)
        // 使用fillColor(Color.枚举名)设置图标颜色
        .fillColor(Color.Green)
    }
  }
}