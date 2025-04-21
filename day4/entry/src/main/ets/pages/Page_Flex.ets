@Entry
@Component
struct Page_Flex {
  @State message: string = 'Hello World';

  build() {
    Column() {
      // 弹性容器
      // 既可以充当row又可以充当column
      // 默认横向布局
      // Flex({对象})
      Flex({
        // 设置主轴方向
        direction: FlexDirection.Row
      }) {
        Text('测试文本')
        Text('测试文本')
        Text('测试文本')
      }
      .backgroundColor(Color.Pink)

      Flex({
        direction: FlexDirection.Column
      }) {
        Text('测试文本')
        Text('测试文本')
        Text('测试文本')
      }
      .backgroundColor(Color.Orange)
      .height(100)

      // 弹性盒子换行
      Flex({
        wrap:FlexWrap.Wrap
      }){
        Text('测试文本')
          .width(60)
          .height(40)
          .backgroundColor(Color.Green)
          .margin(4)
        Text('测试文本')
          .width(60)
          .height(40)
          .backgroundColor(Color.Green)
          .margin(4)
        Text('测试文本')
          .width(60)
          .height(40)
          .backgroundColor(Color.Green)
          .margin(4)
        Text('测试文本')
          .width(60)
          .height(40)
          .backgroundColor(Color.Green)
          .margin(4)
        Text('测试文本')
          .width(60)
          .height(40)
          .backgroundColor(Color.Green)
          .margin(4)
        Text('测试文本')
          .width(60)
          .height(40)
          .backgroundColor(Color.Green)
          .margin(4)
        Text('测试文本')
          .width(60)
          .height(40)
          .backgroundColor(Color.Green)
          .margin(4)
      }
    }
  }
}