@Entry
@Component
struct Page_LayoutWeight {
  @State message: string = 'Hello World';

  build() {
    Column(){
      Row(){
        Text('测试文本')
          .backgroundColor(Color.Orange)
            // 对子容器设置在父容器主轴方向剩余宽度比
          // .layoutWeight(数值)
          .layoutWeight(1)
        Text('测试文本')
          .backgroundColor(Color.Pink)
          .layoutWeight(2)
        Text('测试文本')
          .backgroundColor(Color.Blue)
          .width('20%')
      }
    }
  }
}