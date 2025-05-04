@Entry
@Component
struct Page_ScrollBar {
  // 长度为 30 每一项都为 undefined 的数组
  list: string[] = Array.from({ length: 30 })

  build() {
    Column() {
      Text('控制器-自定义滚动条')
        .fontSize(20)
        .fontWeight(900)
        .padding(10)
      Grid() {
        ForEach(this.list, (item: string, index) => {
          GridItem() {
            this.ItemBuilder(index)
          }
          .padding(5)
          .height('30%')
          .width('25%')
        })

      }
      .rowsTemplate('1fr 1fr 1fr') // 竖向滚动
      .rowsGap(10)
      .width('100%')
      .height(300)
      .border({ width: 1 })
      .padding(5)
      .scrollBar(BarState.Off) // 关闭

    }
    .width('100%')
    .height('100%')
  }

  @Builder
  ItemBuilder(index: number) {
    Text((index + 1).toString())
      .backgroundColor('#0094ff')
      .width('100%')
      .height('100%')
      .fontSize(30)
      .fontColor(Color.White)
      .textAlign(TextAlign.Center)
  }
}