// 递归
// 在函数中调用函数
let count : number = 0
let frFn = () => {
  console.log(`递归执行第${count}次`)
  count++
  if (count<10) {
    frFn()
  }
}
frFn()

@Entry
@Component
struct Page_FunRecursion {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_FunRecursionHelloWorld')
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