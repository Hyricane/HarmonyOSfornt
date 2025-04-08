//联合类型
//可以使一个变量接受多种类型的数据
//语法:let 变量名 : 类型1 | 类型2 | 类型3
let judge : number | string
judge = 100
console.log('分数是',judge)
judge = '优秀'
console.log('评价是',judge)

//联合类型还可以限定数据的选择范围
//语法:let 变量名 : 选择1 | 选择2 | 选择3
//语法:let 变量名 : 选择1 | 选择2 | 选择3
let gender : 'male' | 'female' | 'other'
gender = 'male'

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