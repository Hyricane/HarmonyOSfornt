// 对象
// 将现实存在的事物抽象为一个接口,接口所定义的是一个统一的概念
// interface 接口名{属性名1:类型,属性名2:类型,属性名3:类型}
interface person{
  name:string,
  age:number,
  gender:string,
  nationality: string,
  hobby:string[],
  education:string,
  workYear:number
}
// 实现接口
// 为上面定义的接口赋予具体的数值,赋值后称为一个确切的对象
// let 对象名:接口名 = {属性名1:值,属性名2:值,属性名3:值}
let zhangsan:person={
  name:'张三',
  age:18,
  gender:'男',
  hobby:['唱', '跳','rap','篮球'],
  education: '初中',
  nationality:'汉',
  workYear: 1

}
console.log('张三的爱好是',zhangsan.hobby);

// 需求:定义另一个对象,并取出第二个爱好属性
let lisi: person = {
  name: '李四',
  age: 20,
  gender: '女',
  hobby: ['跳舞', '唱', '篮球', '读书'],
  education: '高中',
  nationality: '汉',
  workYear: 3
}
console.log('李四的爱好是', lisi.hobby[1]);

// 需求:定义一个名为car的接口,用小米su7实现
interface car{
  brand:string,
  price:number,
  weight:number,
  speed:number,
  color:string,
  isElectronic:boolean
}
let XiaoMisu7:car = {
  brand:'小米',
  price:299999,
  weight:2.6,
  speed:240,
  color:'yellow',
  isElectronic:true
}

// 需求:创建一个动物类型Animal,并用Cat实现
interface Animal{
  name:string,
  age:number,
  color:string,
  price:number,
  isSterilization:boolean
}
let Cat:Animal = {
  name: 'Tom',
  age: 3,
  color: 'yellow',
  price: 100,
  isSterilization: true
}


@Entry
@Component
struct Page_object {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_objectHelloWorld')
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