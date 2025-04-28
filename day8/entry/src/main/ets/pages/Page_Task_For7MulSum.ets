let tf7msRes:number = 0
for (let tf7msNum:number = 1;tf7msNum<=100;tf7msNum++){
  if (tf7msNum%7==0){
    tf7msRes+=tf7msNum
  }
}
console.log(tf7msRes.toString())
@Entry
@Component
struct Page_Task_For7MulSum {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_Task_For7MulSumHelloWorld')
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