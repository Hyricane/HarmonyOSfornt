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

      Text('测试文本')
        // 调用装饰线是使用对象进行调用
        .decoration({
          type:TextDecorationType.Underline,
          color:Color.Red
        })
      //文本水平对齐方式
      Text('测试文本')
        .backgroundColor(Color.Pink)
        .width('100%')
        // 文本水平对齐,调用枚举TextAlign:start居左,center居中,end居右
        // 需要配合width属性将宽度拉开
        .textAlign(TextAlign.Center)
      Text('测试文本')
        .backgroundColor(Color.Orange)
        .height(100)
        // 文本垂直对齐,调用枚举Align:top顶部对齐,center居中(默认),bottom底部对齐
        // 配合height属性拉开高度
        .align(Alignment.Top)
      // 文本缩进
      Text('近两年，国内智驾一直处于“蒙眼狂奔”局面，各大车企在宣发层面无所不用其极，因为夸大和虚假宣传造成的衍生事故屡见不鲜。最终，引出官方按下“急停键”。')
        // 缩进量按照文字大小进行计算
        .textIndent(32)
      //文本溢出效果
      Text('近期，宝马7系以其独特的外观设计引发了广泛关注。其标志性的双肾型进气格栅经过放大处理，搭配犀利的前大灯组，营造出一种强烈的视觉冲击感。这一设计不仅彰显了车辆的霸气，更赋予了它一种独特的个性，仿佛是一位身着定制西装的商界精英，既展现出强大的气场，又不失内敛的优雅。')
        // 通过实现对象来为文本设置溢出效果
        // Ellipsis:溢出时显示省略号,clip:裁剪溢出内容,Marquee:跑马灯滚动效果(仅一行显示)
        .textOverflow({
          overflow:TextOverflow.Ellipsis
        })
        // 溢出需要配合maxLine设置最大行数
        .maxLines(3)
    }
  }
}