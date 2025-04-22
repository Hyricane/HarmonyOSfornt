@Entry
@Component
struct Page_Position {
  @State message: string = 'Hello World';
// 定位
  build() {
    Column(){
      Row(){

      }
      // 绝对定位
      // 根据父元素左上角移动
      // 元素脱标
      // 下方子元素会覆盖在该子元素上方
      .position({
        x:0,
        y:300
      })
      .width('50%')
      .height('30%')
      .backgroundColor(Color.Gray)
    }
    .width('100%')
    .height('100%')
    .backgroundColor(Color.Pink)
  }
}