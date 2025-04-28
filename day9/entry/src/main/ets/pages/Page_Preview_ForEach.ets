// ForEach循环渲染
// 简化代码结构,配合数组循环生成相同样式不同内容的元素
@Entry
@Component
struct Preview_Preview_ForEach {
  @State title:string[]=['电子产品','精品服饰','母婴产品','影音娱乐','海外旅游',]
  build() {
    Column(){
      // ForEach(this.数组名,(数组内容:类型,索引:类型)=>{元素})
      ForEach(this.title,(tArr:string,index:number)=>{
        Text(tArr)
          .fontSize('24')
          .fontWeight(700)
          .fontColor(Color.Orange)
          .width('100%')
          .padding(15)
      })
    }
    .width('100%')
    .height('100%')
  }
}