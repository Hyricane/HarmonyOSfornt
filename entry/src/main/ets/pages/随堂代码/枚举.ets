//枚举
//枚举用于约定一组数据，使其可以像函数中的方法一样被调用
//语法：enum 枚举名{常量1，常量2，常量3}
// 调用枚举：枚举名.常量名
enum color{
  red = "This is red's RGB",
  green = "This is green's RGB",
  yellow = "This is yeelow's RGB"
}

console.log('red',color.red)




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