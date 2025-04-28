// switch
// switch (被判断的条件){
//   case 条件:
//     执行语句
//   break 中断switch穿透
//   case 条件2:
//     执行语句
//     break
//   default : 条件均不符合时执行
//     执行语句
// }
// switch穿透,当有一个case符合时,会执行该case后的所有case,通过在每个case后添加break接触穿透效果

let condition : string = '测试1'
switch (condition){
  case '测试1':
    console.log('测试1')
  break
  case '测试2':
    console.log('测试2')
  break
  default :
    console.log('以上条件均不匹配')
}
@Entry
@Component
struct Page_Switch {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_SwitchHelloWorld')
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