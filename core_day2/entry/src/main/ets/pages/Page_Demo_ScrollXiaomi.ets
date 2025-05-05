@Entry
@Component
struct Page_Demo_ScrollXiaomi {
  @State message: string = 'Hello World';

  build() {
    Column(){
      Scroll(){
        Column(){
          Image($r('app.media.ic_xiaomi_scroll_01'))
            .width('100%')
          Image($r('app.media.ic_xiaomi_scroll_01'))
            .width('100%')
          Image($r('app.media.ic_xiaomi_scroll_01'))
            .width('100%')
        }
      }
      .scrollBar(BarState.Off)
      .width('100%')
      .height('100%')
    }
    .height('100%')
    .width('100%')
  }
}