let addNum : number = 1
// 先自增再赋值
console.log('',++addNum)
// 先赋值,再自增
let addNumRes : number = addNum++
console.log('',addNumRes)

@Entry
@Component
struct Page_AddSelf {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_AddSelfHelloWorld')
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