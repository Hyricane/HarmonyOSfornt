//日志打印数据
console.log('鸿蒙')
// 变量 String字符型 number数字型(不区分整形浮点) boolean
//使用关键字let定义 语法：let 变量名：类型=变量值
let title: string = '汉堡'
console.log(title)

let num: number = 10
console.log('num的值是：',num)

let bool : boolean = false
console.log('布尔类型是',bool)

//常量 数据类型同变量 常量不可被修改
//使用const定义 语法:const 常量名:类型=常量值

const pi : number = 3.14
console.log('常量值是pi',pi)

//变量和常量的命名规则：
//只能包含数字字母下划线$，并且数字不能开头
//不能使用关键字和保留字
//严格区分大小写




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