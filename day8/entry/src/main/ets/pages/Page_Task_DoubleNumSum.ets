let tdNum:number = 1
let tdRes:number = 0
while (tdNum<=10){
  if (tdNum%2==0){
    tdRes+=tdNum
  }
  tdNum++
}
console.log(tdRes.toString())

@Entry
@Component
struct Page_Task_DoubleNumSum {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_Task_DoubleNumSumHelloWorld')
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