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