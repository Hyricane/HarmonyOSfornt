@Entry
@Component
struct Page_Watch {
  // @Watch('函数名'),被修饰的数据变化时激活函数
  //需要配合@State等其他修饰数据的装饰器使用
  @State  @Watch('wfn') money: number = 99
  wfn(){
    AlertDialog.show({message:`数据发生变化`})
  }
  build() {
    Column() {
      Text(this.money.toString())
        .onClick(() => {
          this.money++
        })
    }
    .height('100%')
    .width('100%')
  }
}