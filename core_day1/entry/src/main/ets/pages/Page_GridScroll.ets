@Extend(Text)
function newExtend() {
  .width('100%')
  .height('100%')
  .fontSize(30)
  .fontColor(Color.White)
  .textAlign(TextAlign.Center)
}

@Entry
@Component
struct Page_GridScroll {
  // 长度为 10 每一项都为 undefined 的数组
  list: string[] = Array.from({ length: 30 })

  build() {
    Column() {
      Text('设置滚动')
        .fontSize(20)
        .fontWeight(900)
        .padding(10)
      Grid() {
        ForEach(this.list, (item: string, index) => {
          GridItem() {
            Text((index + 1).toString())
              .newExtend()
          }
          // 因为行列占比只给了其中一个,所以要对每个GridItem单独设置宽高,以免单个GridItem撑满整个Grid
          .width('33%')
          .height('33%')
          .padding(5)
          .backgroundColor('#0094ff')
        })

      }
      // 只给行或列的占比,则自动激活滚动效果
      // 水平滚动只给行(滚动时无法确定一共几列)
      // 垂直滚动只给列(滚动时无法确定一共几行)
      // .rowsTemplate('1fr 1fr 1fr 1fr 1fr')
      .columnsTemplate('1fr 1fr 1fr 1fr 1fr')
      .rowsGap(10)
      .columnsGap(10)
      .width('100%')
      .height(300)
      .border({ width: 1 })
      .padding(5)
    }
    .width('100%')
    .height('100%')
  }
}
