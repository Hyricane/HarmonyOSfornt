// 展开数组
// ...数组名
let eArr:number[] = [1,2,3,4,5,6,7,8,9]
let eArr1:number[] = [0]
eArr1.push(...eArr)
console.log(eArr1.toString())
@Entry
@Component
struct Page_ArrExtend {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_ArrExtendHelloWorld')
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