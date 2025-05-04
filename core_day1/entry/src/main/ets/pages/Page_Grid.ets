@Entry
@Component
struct Page_Grid {
  @State message: string = 'Hello World';
  @State msg:string[] = [
    '测试文本','测试文本','测试文本','测试文本','测试文本','测试文本','测试文本','测试文本','测试文本','测试文本','测试文本','测试文本','测试文本','测试文本','测试文本','测试文本'
  ]
  build() {
    Column(){
      // 网格布局
      Grid(){
        // 仅能包含GridItem(){}一种组件
        // 不设置宽高的情况下GridItem大小根据设置的比例自动分配
        //GridItem(){}中仅能包含一个子组件
        ForEach(this.msg,(Item:string)=>{
          GridItem(){
            Text(Item)
          }
          .backgroundColor(Color.Pink)
        })
      }
      // GridItem在Grid中的列占比
      .columnsTemplate('1fr 1fr 1fr 1fr')
      // GridItem在Grid中的行占比
      .rowsTemplate('1fr 1fr 1fr 1fr')
      // 列的间距
      .columnsGap(10)
      // 行的间距
      .rowsGap(10)
    }
    .height('100%')
    .width('100%')
  }
}