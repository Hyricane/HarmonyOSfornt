@Entry
@Component
struct Page_FlexAlign {
  @State message: string = 'Hello World';

  build() {
    Column(){
      Column(){
        Text('测试文本')
          .backgroundColor(Color.Pink)
            // 单个元素设置侧轴对齐
          .alignSelf(ItemAlign.End)
        Text('测试文本')
          .backgroundColor(Color.Pink)

        Text('测试文本')
          .backgroundColor(Color.Pink)
      }
      .backgroundColor('#ccc')
      .height(300)
      .width('100%')
      Row(){
        Text('测试文本')
          .backgroundColor(Color.Pink)
          // 单个元素设置侧轴对齐
          .alignSelf(ItemAlign.Start)
          .alignSelf(ItemAlign.Center)
          .alignSelf(ItemAlign.End)
          // 基线对齐
          .alignSelf(ItemAlign.Baseline)
          // 拉伸
          // .alignSelf(ItemAlign.Stretch)
        Text('测试文本')
          .backgroundColor(Color.Pink)

        Text('测试文本')
          .backgroundColor(Color.Pink)
      }
      .backgroundColor('#ccc')
      .height(300)
      .width('100%')
      // 主轴对齐方式
      // .justifyContent(FlexAlign.枚举)
      // 两端对齐,左右盒子贴边,中间剩余盒子均分空间
      .justifyContent(FlexAlign.SpaceBetween)
      // 空间均匀分布在盒子两侧,故中间盒子间距是左右盒子的2倍
      .justifyContent(FlexAlign.SpaceAround)
      // 空间均分,所有盒子间距相等
      .justifyContent(FlexAlign.SpaceEvenly)
      // 左对齐
      .justifyContent(FlexAlign.Start)
      // 居中
      .justifyContent(FlexAlign.Center)
      // 右对齐
      .justifyContent(FlexAlign.End)

      // row侧轴对齐
      .alignItems(VerticalAlign.Top)
      .alignItems(VerticalAlign.Center)
      .alignItems(VerticalAlign.Bottom)
      Column(){
        Column(){
          Text('测试文本')
            .backgroundColor(Color.Orange)
          Text('测试文本')
            .backgroundColor(Color.Orange)
          Text('测试文本')
            .backgroundColor(Color.Orange)
        }
      }
      .width(300)
      .aspectRatio(1)
      .backgroundColor(Color.Pink)
      // Column侧轴对齐
      .alignItems(HorizontalAlign.Start)
      .alignItems(HorizontalAlign.End)
      .alignItems(HorizontalAlign.Center)
    }
  }
}