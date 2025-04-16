// 函数
// 使用function关键字定义函数,通过函数包裹需要重复利用的代码，使其可以反复调用，以简化代码结构
// function 函数名(){代码块}
function fn(){
  console.log('*')
  console.log('**')
  console.log('***')
  console.log('****')
  console.log('*****')
}
// 调用函数
// 函数名()
fn()

// 需求:创建函数,打印我是张三三遍
function logZs(){
  console.log('张三')
  console.log('张三')
  console.log('张三')
}
logZs()

//函数的参数
// ()中设置形参
// function 函数名(形参名1:类型,形参名2:类型,形参名3:类型,...)
function sum(a:number,b:number){
  // 函数内定义的变量只能在函数内被调用
  let res = a+b
  return res
}
// 调用时的()中传入实参
// 函数名(实参1,实参2,实参3,...)
console.log('结果是',sum(10,20))

// 需求:接受调用时传入的3个参数使其相加
function sum1(a:number,b:number,c:number){
  let res = a+b+c
  return res
}
console.log('结果是',sum1(10,20,30))

//需求:接受传入的数量和价格计算单价
function price(a:number,b:number){
  let res = a*b
  return res
}
console.log('总价是',price(10,20))

@Entry
@Component
struct Page_function {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_functionHelloWorld')
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