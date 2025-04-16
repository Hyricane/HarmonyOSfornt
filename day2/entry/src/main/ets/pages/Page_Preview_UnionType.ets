// 联合类型
// 使用联合类型来为一个变量添加多种数据类型
// let 变量名:类型1 | 类型2 | 类型3 = 值
let UnionType:number | string = 100
UnionType = '字符串'
// 还可以使用联合类型来将数据规定在几个值之间进行选择

let UnionType_1:'数值1' | '数值2' | '数值3'
//可以看到报错提示'数值4'字符串不在联合类型内
// UnionType_1 = '数值4'
UnionType_1 = '数值1'

@Entry
@Component
struct Page_Preview_UnionType {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_Preview_UnionTypeHelloWorld')
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