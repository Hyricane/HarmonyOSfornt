console.log('认识数据')
// 变量和常量的命名规范:命名仅包含数字字母下划线$，并且数字不能开头

// 使用let关键字来为变量分配一块内存空间
// let 变量名 : 数据类型 = 值
let name : string = '鸿蒙'
console.log(name)
// 更改变量值只需要 变量名 = 新变量值
name = '前端'
console.log(name)
// 变量值类型必须与之前定义的完全一致
let num : number = 1
console.log('数字型是',num)
// 布尔型，即为是或否，仅两个固定值，true or false
let bool : boolean = true
console.log('布尔型是',bool)

// -----------------------------常量-----------------------------------
// 使用const关键字为常量分配一块内存空间，与变量不同的是，常量不可更改内容
// const 常量名 : 数据类型 = 值
const gender : string = '男'
console.log(gender)

@Entry
@Component
struct Page_data {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_dataHelloWorld')
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