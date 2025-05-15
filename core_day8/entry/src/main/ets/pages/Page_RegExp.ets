//正则表达式
// 规定具体的数据格式
// const 常量名 : RegExp = new RegExp('数据')
// 简化写法
// const 常量名 = /'数据'/
const reg_1 = /ArkTs/
console.log('',reg_1.test('arkts'))
console.log('',reg_1.test('ArkTs'))





@Entry
@Component
struct Page_RegExp {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_RegExpHelloWorld')
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