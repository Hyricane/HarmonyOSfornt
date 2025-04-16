// 数组
// 使用let关键字为多个类型相同的数据设置数组
// let 数组名: 类型[] = [值1,值2,值3,...]
let names: string[] =['数据1','数据2','数据3']

@Entry
@Component
struct Page_array {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_arrayHelloWorld')
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