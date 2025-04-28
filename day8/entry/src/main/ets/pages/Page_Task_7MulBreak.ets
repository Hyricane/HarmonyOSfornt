let t7mbCount:number = 0
for (let count:number=40;count<=100;count++){
  if (count%7==0){
    t7mbCount++
    if (t7mbCount==5){
      console.log(count.toString())
      break
    }
  }
}

@Entry
@Component
struct Page_Task_7MulBreak {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_Task_7MulBreakHelloWorld')
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