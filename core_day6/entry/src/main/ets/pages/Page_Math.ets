//Math对象的常用方法
// Math.round(数值)
// 四舍五入
let mNum = Math.round(1.1)
console.log(mNum.toString())
let mNum1 = Math.round(1.5)
console.log(mNum1.toString())
//Math.abs(number)
// 取绝对值
let mNum2 = Math.abs(-1)
console.log(mNum2.toString())

// Math.max/min(多个数值/展开的数组)
// 取最大/最小值
let mNums:number[] = [1,2,3,4,5]
let mNum3 = Math.max(1,2,3,4,5)
console.log(mNum3.toString())
let mNum4 = Math.min(1,2,3,4,5)
console.log(mNum4.toString())
let mNum5 = Math.max(...mNums)
console.log(mNum5.toString())
let mNum6 = Math.min(...mNums)
console.log(mNum6.toString())

@Entry
@Component
struct Page_Math {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_MathHelloWorld')
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