//三元运算符
// 判断条件 ? 为真时取值 : 为假时取值
let teropNum : number = 10
let teropNum1 : number = 20

let teropMax = teropNum>teropNum1 ? teropNum : teropNum1
console.log('较大值是',teropMax)

@Entry
@Component
struct Page_TernaryOpeartor {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_TernaryOpeartorHelloWorld')
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