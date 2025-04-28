let t7mNum:number = 1
let t7mRes:number = 0
while (t7mNum<=100){
  if (t7mNum%7==0&&t7mNum%2==0){
    t7mRes+=t7mNum
  }
  t7mNum++
}
console.log(t7mRes.toString())

@Entry
@Component
struct Page_Task_7MulDouble {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_Task_7MulDoubleHelloWorld')
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