let hobby:'篮球'|'编程'|'游戏'
hobby='篮球'
console.log(hobby)
enum hobbyEnum{
  hobby1='篮球',
  hobby2='编程',
  hobby3='游戏'
}
let hobby1:hobbyEnum=hobbyEnum.hobby1
console.log(hobby1)

@Entry
@Component
struct Page_Task_EnumAndUnType {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_Task_EnumAndUnTypeHelloWorld')
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