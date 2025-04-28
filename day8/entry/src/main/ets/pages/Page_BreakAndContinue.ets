// break
// 中断整个循环
for (let fNum : number = 1;fNum<=10;fNum++){
  console.log(`第${fNum}次循环`)
  if (fNum==6){
    break
  }
}

// continue中断本次循环
for (let fNum : number = 1;fNum<=10;fNum++){
  if (fNum==6){
    continue
  }
  console.log(`第${fNum}次循环`)
}
@Entry
@Component
struct Page_Break {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_BreakHelloWorld')
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