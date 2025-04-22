@Entry
@Component
struct Page_ZIndex {
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
        // 定位后的元素会层级会变低
        .offset({
          x:10,
          // x:'50%',
          // 若取值为百分比是取父元素的百分比
          y:10
        })
        // 重新设置层级使其在其他元素上显示
        .zIndex(10)
      Text('测试文本')
        .width('100')
        .backgroundColor(Color.Gray)
    }
    .width('100%')
  }
}