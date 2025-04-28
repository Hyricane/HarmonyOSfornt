let m7Num:number = 1
let m7Res:number = 0
while (m7Num<=100){
  if (m7Num%7==0){
    m7Res+=m7Num
  }
  m7Num++
}
console.log(m7Res.toString())
@Entry
@Component
struct Page_Task_7mul {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_Task_7mulHelloWorld')
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