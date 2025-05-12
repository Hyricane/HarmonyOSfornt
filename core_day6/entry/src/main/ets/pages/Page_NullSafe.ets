// 空安全
// 日常开发中数据可能为空，为空时易引发报错，需要特殊处理
// 方式1:定义联合类型,使用if语句手动判断
let nsObj : number | null
nsObj = 1
if(nsObj!=null){
  nsObj+1
}
// 方式2:
// 非空断言运算符
// 变量名!
nsObj!+1
// 方式3：
// 空值合并
nsObj ?? 1
// 等价于 nsObj !=null ? nsObj : 1
nsObj+1
// 方式4:
// 可选链
// 变量名？
class Dog {
  bark() {
    console.log('啊呜~')
  }
}

class Person {
  name?: string
  dog?: Dog

  constructor(name: string, dog?: Dog) {
    this.name = name
    this.dog = dog
  }
}
const p: Person = new Person('jack')
// p.dog.bark()// 报错 dog 可能为空

// 逻辑判断
if (p.dog) {
  p.dog.bark()
}

// 当 dog不为null 或 undefined 时 再调用 bark 并且不会报错
p.dog?.bark()
@Entry
@Component
struct Page_NullSafe {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_NullSafeHelloWorld')
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