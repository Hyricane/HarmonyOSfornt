//数组
//定义语法:let 数组名 : 类型[] = [内容1,内容2,内容3]
//仅能存相同数据类型的数据
let names : string[] = ['姓名1','姓名2','姓名3']
console.log('数组内容为',names)
//数组索引
//获取数组内容: 数组名[索引]，索引从0开始
console.log('索引为2的数组内容是',names[2])



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