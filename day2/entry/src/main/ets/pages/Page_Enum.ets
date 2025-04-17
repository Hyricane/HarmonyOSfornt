// 枚举
// 联合类型中字面量类型的进阶,将数据规定在一组范围内
// enum 枚举名{常量1='值1',常量2='值2',...}
enum colorList{
  red="#ff0f29",
  orenge="#ff7100",
  green='#30b30e'
}
// 在变量中调用枚举
// let 变量名:枚举名 = 枚举名.常量名
let bgc:colorList = colorList.red
@Entry
@Component
struct Page_Enum {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_EnumHelloWorld')
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