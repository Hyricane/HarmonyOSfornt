@Entry
@Component
struct Page_Preview_Demo_Click {
  @State opacityNum : number = 1
  build() {
    Column(){
      Row()
        .backgroundImage($r('app.media.Demo_click'))
        .backgroundImageSize(ImageSize.Cover)
        .width(100)
        .height(100)
        .opacity(this.opacityNum)
        .onClick(()=>{
          this.opacityNum = 0
        })
    }
    .width("100%")
    .height('100%')
  }
}