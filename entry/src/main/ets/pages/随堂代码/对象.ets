//对象
//用法: 首先创建接口约定对象中的属性,然后实现接口，至此一个对象创建完成

//接口语法:interface 接口名{属性:类型}
interface Person{
  name : string
  age : number
  weight : number
}
//实现接口
//对象语法:let 对象名 : 接口名 = {属性:类型,属性1:类型}
let person : Person = {
  name : '姓名1',
  age : 20,
  weight : 100
}

//调用对象的某个属性值
//语法: 对象名.属性值
console.log(person.name)
console.log('年龄是',person.age)
console.log('体重是',person.weight)

//带有行为的对象
interface Person1{
  name : string
  age : number
  weight : number

//行为是定义在对象中的方法，通常使用箭头函数，但是语法不同
//语法:函数名 : () => 返回值
  coding: () => void
  learn: (className:string) => void
}

let student : Person1 = {
  name : '姓名',
  age : 20,
  weight : 100,

//实现接口中方法
  coding : () => {
    console.log('我会写代码')
  },
  learn : (className : string) => {
    console.log('我学习',className)
  }
}
//调用接口中方法
student.coding()
student.learn('ArkTs')




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