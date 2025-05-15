// 箭头函数简写
let cfArr : number[] = [1,3,45,76,8]
// 函数体只有一行,省略{}和return
// 参数仅一个且不需要写类型,省略()
cfArr.filter(item => item>5)

@Entry
@Component
struct Page__ConsicionFun {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page__ConsicionFunHelloWorld')
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