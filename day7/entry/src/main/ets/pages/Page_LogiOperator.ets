// 逻辑运算
let numlogi1: number = 9
let numlogi2: number = 5
let numlogi3: number = 3

console.log('逻辑运算符的结果是', numlogi1 > numlogi2 && numlogi2 > numlogi3)
console.log('逻辑运算符的结果是', numlogi1 > numlogi2 && numlogi2 < numlogi3)
console.log('逻辑运算符的结果是', numlogi1 > numlogi2 || numlogi2 < numlogi3)
console.log('逻辑运算符的结果是', !true)

//短路运算
// 对于&&来说,有一值为假就返回假,所以当有一边为假时,另一边就无需计算,这被称为短路运算
// 同理,对于||来说,有一边为真则另一边无需计算

// 两边为数字时返回短路前的具体值,而不是布尔值
// 数字中只有0为假
// 字符串中空字符串为假

// 运算符优先级
// ()>算数(自增减最高,其次取反)>比较(大于小于高于等于)>逻辑(与最高)>赋值
@Entry
@Component
struct Page_LogiOperator {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_LogiOperatorHelloWorld')
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