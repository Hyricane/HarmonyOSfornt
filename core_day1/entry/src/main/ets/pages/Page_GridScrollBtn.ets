@Entry
@Component
struct Page13_Grid_Scroller {
  nums: number[] = Array.from({ length: 200 })
  sc:Scroller = new Scroller()//1.实例化Scroller对象
  build() {
    Column() {
      Text('控制器-代码控制滚动')
        .fontSize(20)
        .fontWeight(900)
        .padding(10)
      Grid(this.sc) //2.将实例化的对象作为参数传入Grid()
      {
        ForEach(this.nums, (item: number, index: number) => {
          GridItem() {
            Text(index + 1 + '')
          }
          .backgroundColor('#0094ff')
          .width('25%')
        })
      }
      .padding(10)
      .height(450)
      .rowsGap(10)
      .columnsGap(10)
      .rowsTemplate('1fr 1fr 1fr 1fr')

      Row() {
        Button('上一页')
          .width(100)
          .onClick(() => {
            // 3.在点击事件中调用其中的方法
            this.sc.scrollPage({
              next:false
            })
          })
        Button('下一页')
          .width(100)
          .onClick(() => {
            this.sc.scrollPage({
              next:true
            })
          })
      }
      .width('100%')
      .justifyContent(FlexAlign.SpaceAround)
    }
  }
}