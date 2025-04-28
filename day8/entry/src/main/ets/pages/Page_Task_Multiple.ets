let tmNum:number = 1
let tmRes:number = 1
while (tmNum<=5){
  tmRes *= tmNum
  tmNum++
}
console.log(tmRes.toString())
@Entry
@Component
struct Page_Task_Multiple {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_Task_MultipleHelloWorld')
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