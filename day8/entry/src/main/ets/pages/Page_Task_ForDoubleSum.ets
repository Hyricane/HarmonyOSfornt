let fdsRes:number = 0
for (let fdsNum:number = 1;fdsNum<=10;fdsNum++){
  if (fdsNum%2==0){
    fdsRes+=fdsNum
  }
}
console.log(fdsRes.toString())
@Entry
@Component
struct Page_Task_ForDoubleSum {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_Task_ForDoubleSumHelloWorld')
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