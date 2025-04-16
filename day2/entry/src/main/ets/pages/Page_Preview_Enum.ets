// 枚举类型
// 使用枚举将一些常用的数据利用键值对的方式封装起来,方便使用时调用
// enum 枚举名{变量名1='数据1',变量名2='数据2',变量名3='数3'}
enum enum_list{
  enum_1='data_1',
  enum_2="data_2",
  enum_3='data_3'
}
// 调用枚举
// 枚举名.变量名
console.log('枚举1的内容是',enum_list.enum_1)

@Entry
@Component
struct Page_Preview_Enum {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_Preview_EnumHelloWorld')
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