let fruit : string = '苹果'
let fruit1 : string = '橙子'
// switch 多分支语句
// switch (用于匹配的变量名){
//   case 数据1:
//     执行语句
//   break 中断语句
//   case 数据2:
//     执行语句
//     break 中断语句,若不添加则从第一个匹配的case往后执行
//   default : 若没有匹配的case值则执行该语句
//     执行语句
// }
switch (fruit){
  case '苹果':
    console.log('苹果的价格是5元1斤')
  break
  case '橘子':
    console.log('橘子的价格是5元2斤')
  break
  default :
    console.log('未查询到该商品')
}


@Entry
@Component
struct Page_Preview_Switch {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_Preview_SwitchHelloWorld')
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