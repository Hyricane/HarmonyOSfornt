@Entry
@Component
struct Page_Scroll {

  scArr:string[] = Array.from({length:200})

  build() {
    Column({ space: 10 }) {
      Text('竖向滚动')
        .fontSize(20)
      // Scroll 容器尺寸固定
      // scrollable 设置横向
      // 内容横向超出 Scroll 即可
      //宽高会继承父盒子
      Scroll() {
        // 设置内容
        Column() {
          ForEach(this.scArr,(item:string)=>{
            Text('占位文字')
          })
        }
        .height(1000)
        .width('100%')
        // 线型渐变
        .linearGradient({
          colors: [['#0094ff', 0], [Color.Orange, 1]],
        })
      }
      .scrollBar(BarState.Off) //开关滚动条
      .edgeEffect(EdgeEffect.Spring)//滚动至边缘的效果
      .scrollBarColor(Color.Pink)
      .scrollBarWidth(50)
      .scrollBar(BarState.Off)
      .edgeEffect(EdgeEffect.Spring)
      .scrollBarColor(Color.Black)
      .scrollBarWidth(20)
      .width('100%')
      .height(200)
      .border({ width: 1, color: Color.Orange })

      Divider()

      Text('横向滚动')
        .fontSize(20)

      // Scroll 容器尺寸固定
      // scrollable 设置横向
      // 内容横向超出 Scroll 即可
      Scroll() {
        Row() {
          ForEach(this.scArr,(item:string)=>{
            Text('占位文本')
          })
        }
        .height('100%')
        .width(1000)
        .linearGradient({
          angle: 90,
          colors: [['#0094ff', 0], [Color.Orange, 1]],
        })
      }
      // 横向滚动
      .scrollable(ScrollDirection.Horizontal)
      .width('100%')
      .height(200)
      .border({ width: 1, color: Color.Orange })
      .edgeEffect(EdgeEffect.Spring)
    }
    .width('100%')
    .height('100%')
  }
}