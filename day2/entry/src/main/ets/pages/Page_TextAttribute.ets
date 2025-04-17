@Entry
@Component
struct Page_Text {
  @State message: string = 'Hello World';

  build() {
    Column() {
      Text('测试文本')
        .fontSize(20)//文字大小,默认16fp,fp为文本专用单位
        .fontColor(Color.Pink)//文字颜色
        .backgroundColor(Color.Green)//字体背景颜色
        .fontStyle(FontStyle.Italic) //字体样式:倾斜
        // .fontWeight(FontWeight.Bold)//字体粗细,使用枚举
        .fontWeight(1000)//使用数字

      Text('易卜拉欣说：“尊敬的中华人民共和国主席习近平先生，我非常高兴再次见到您，并且欢迎您到马来西亚访问。您此次访问，正是马中两国友好关系的真实写照。我也很荣幸地看到两国关系一直保持着蓬勃和有力的发展，对马中两国来说，如今携手共进与以往同样至关重要，这也是两国共同的愿景。')
        // 行高=文字大小+文字上下留白
        .lineHeight(16)
    }
  }
}