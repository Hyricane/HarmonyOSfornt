//生成0-1的随机数
// Math.random(),该对象没有参数
let mNum : number = (Math.random() *10)
// 向上取整
// 并非四舍五入，而是小数位有数据就向整数进一
// Math.ceil(变量)
let mNum1 : number = Math.ceil(mNum)
// 向下取整
// Math.floor(变量)
// 直接删除小数位，只保留整数位
let mNum2 : number = Math.floor(mNum)

console.log('',mNum1,mNum2)


// Demo
// 取0-10之间的随机整数
console.log('',Math.floor(Math.random()*11))

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