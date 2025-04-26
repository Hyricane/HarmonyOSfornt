let toNum : number = 2
let toNum1 : number = 3

// 三元运算符
// 条件1 比较运算符 条件2 ? 结果1 : 结果2
// 如果条件成立执行:前内容
// 条件不成立执行:后内容
let toRes : number = toNum<toNum1 ? toNum : toNum1
console.log('较小值是',toRes)
@Entry
@Component
struct Page_Preview_TernaryOperator {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_Preview_TernaryOperatorHelloWorld')
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