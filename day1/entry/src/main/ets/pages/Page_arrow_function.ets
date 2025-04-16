// 箭头函数
// 比标准函数更加简洁
// let 函数名 = (形参:类型,形参:类型) =>{函数体}
let getRes = (a:number,b:number) => {
  let res=a*b
  return res
}
let result = getRes(10,20)
console.log('结果是',result)


@Entry
@Component
struct Page_arrow_function {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_arrow_functionHelloWorld')
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