// 打印该数组中大于0的元素个数
let dfoNums2 : number[] = [22, 3, 0, 55, 0, 0, 11, 5, 0]
let dfoCount : number = 0
for (let dfoNum of dfoNums2){
  if (dfoNum>0){
    dfoCount++
  }
}
console.log(dfoCount.toString())

@Entry
@Component
struct Page_Demo3_ForOf {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(dfoCount.toString())
        .id('Page_Demo3_ForOfHelloWorld')
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