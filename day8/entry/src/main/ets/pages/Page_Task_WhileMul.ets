let twmNum:number = 1
let twmRes:number = 1
for (twmNum;twmNum<=5;twmNum++){
  twmRes*=twmNum
}
console.log(twmRes.toString())

@Entry
@Component
struct Page_Task_WhileMul {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_Task_WhileMulHelloWorld')
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