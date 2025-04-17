// 联合类型
// 使用联合类型来为变量添加多个属性
// let 变量名:类型1|类型2|类型3
let Score:string|number|boolean
Score = 100
Score = "优秀"
Score = true
//联合类型用法2
// 将具体的值作为类型添加给变量,从而实现变量在给定范围内选择,作为类型的值叫做字面量类型
let gender:"男"|'女'|'未知'
gender='男'
gender='女'
gender='未知'
// 报错
// gender='测试'

@Entry
@Component
struct Page_UnionType {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_UnionTypeHelloWorld')
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