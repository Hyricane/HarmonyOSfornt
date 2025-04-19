@Entry
@Component
struct Page_Icon {
  @State message: string = 'Hello World';

  build() {
    Column(){
      Column(){
        Image($r('app.media.ic_public_input_search'))
          .width(100)
          .aspectRatio(1)
          // 改变图标颜色
          // .fillColor(Color.枚举)
          .fillColor(Color.Pink)

        // 使用系统内置图标
        // 系统内置图标储存在sys/media目录下
        Image($r('sys.media.ohos_save_button_filled'))
          .width(100)
          .aspectRatio(1)
          .fillColor(Color.Orange)
      }
    }
    .width('100%')
    .height('100%')
  }
}