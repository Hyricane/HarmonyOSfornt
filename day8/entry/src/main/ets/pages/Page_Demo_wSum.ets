let wsumNum : number = 1
let wsumRes : number = 0
while (wsumNum<=10){
  wsumRes+=wsumNum
  wsumNum++
}
console.log('结果是',wsumRes)

//1-100偶数累加
let wsumNum1 : number = 1
let wsumRes1 : number = 0
while (wsumNum1<=100){
  if (wsumNum1%2 == 0){
    wsumRes1+=wsumNum1
  }
  wsumNum1++
}
console.log('结果是',wsumRes1)

@Entry
@Component
struct Page_Demo_wSum {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_Demo_wSumHelloWorld')
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