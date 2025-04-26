let numArr : number[] = [1,2,3,4,5,6,7,8,9,10]
let newNumArr : number[] = []
let sumArr : number = 0
let arrCount : number = 0
for (let item of numArr){
  sumArr+=item
}
console.log('数组的累加结果是',sumArr)

//打印数组中大于5的数字
for (let item2 of numArr){
  if (item2>5){
    newNumArr.push(item2)
  }
}
console.log('大于5的数字有',newNumArr)

//统计数组中大于5的数据的个数
for (let item2 of numArr){
  if (item2>5){
    arrCount++
  }
}
console.log(`有${arrCount}个数据大于5`)


@Entry
@Component
struct Page_Preview_Demo_ArrSum {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_Preview_Demo_ArrSumHelloWorld')
        .fontSize($r('app.float.page_text_font_size'))
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
        .onClick(() => {
          this.message = 'Welcome';
        })
    }
    .height('100%')
    .width('100%')
  }
}