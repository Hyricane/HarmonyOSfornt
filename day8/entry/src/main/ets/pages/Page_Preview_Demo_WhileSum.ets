// while循环累加
let wsNum : number = 0
let wsRes : number = 0
// while (wsNum<10){
//   wsRes +=(++wsNum)
// }
// console.log('10以内的累加是',wsRes)

//while偶数累加循环
while (wsNum<10){
  wsNum++
  if (wsNum%2==0){
    wsRes+=wsNum
  }
}
console.log('10以内的偶数累加是',wsRes)
@Entry
@Component
struct Page_Preview_Demo_WhileSum {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_Preview_Demo_WhileSumHelloWorld')
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