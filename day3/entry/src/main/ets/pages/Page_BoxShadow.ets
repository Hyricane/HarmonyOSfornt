@Entry
@Component
struct Page_BoxShadow {
  @State message: string = 'Hello World';

  build() {
    Column(){
      Column(){

      }
      .backgroundColor(Color.Pink)
      .width(200)
      .aspectRatio(1)
      // 阴影
      // 传入对象
      .shadow({
        // 阴影颜色
        color:Color.Black,
        // 阴影水平偏移量
        offsetX:10,
        // 阴影垂直偏移量
        offsetY:10,
        // 阴影模糊半径,值越大越模糊
        radius:20
      })
    }
  }
}