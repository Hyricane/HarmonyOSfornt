// 需要重复生成样式相同内容不同的结构时，使用ForEach来简化代码，使其循环打印
@Entry
@Component
struct Page_ForEach {
  @State message: string = 'Hello World';
  @State titles:string[] = ['电子产品', '精品服饰', '母婴产品', '影音娱乐', '海外旅游']
  build() {
    Column(){
      // 循环次数跟随数组长度
      // ForEach(数组名,(变量名:类型,索引:数字型)={函数体})
      ForEach(this.titles,(item:string,index:number)=>{
        Text(item)
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