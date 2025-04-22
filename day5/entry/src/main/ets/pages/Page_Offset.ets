@Entry
@Component
struct Page_Offset {
  @State message: string = 'Hello World';

  build() {
    Column(){
      Text('测试文本')
        .width('100')
        .backgroundColor(Color.Green)
      Text('测试文本')
        .width('100')
        .backgroundColor(Color.Pink)
        // 相对定位
        // 子元素根据自身左上角位置定位
        // 元素不脱标
        .offset({
          x:10,
          // x:'50%',
          // 若取值为百分比是取父元素的百分比
          y:10
        })
      Text('测试文本')
        .width('100')
        .backgroundColor(Color.Gray)
    }
    .width('100%')
  }
}