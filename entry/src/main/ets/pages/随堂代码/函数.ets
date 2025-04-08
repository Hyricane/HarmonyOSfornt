//函数
//函数是一段可重复执行的代码块
import App from '@system.app'

//语法: function 函数名() {函数内容}

function fun(){
  console.log('这是一个函数')
}
//调用函数
fun()

//完整的函数用法
//语法 function 函数名(形参1:类型，形参2:类型){函数体 return}
function buy(num:number,price:number){
  let result : number = num * price
  return result
}
//调用函数:函数名(实参1,实参2)
//形参和实参的个数一一对应
let apple : number = buy(2,3)
console.log('苹果',apple)

//箭头函数,功能相同，写法更简洁
//语法:let 函数名 = (形参1:类型,形参2:类型) => {函数体 return}
let fun1 = () => {
  console.log('这是一个箭头函数')
}

fun1()

let buy1 = (num:number,price:number) => {
  let result = num * price
  return result
}

//调用函数
//函数名(实参1，实参2)
let banana : number = buy1(3,4)
console.log('香蕉的价格是',banana)



@Entry
@Component
struct Index {
  @State message: string = '第一个鸿蒙程序';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('HelloWorld')
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