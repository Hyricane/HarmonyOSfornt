//对象数组
// 首先定义接口
interface Person{
  name:string
  age:number
  gender:'男'|'女'
  sleep:(time:number) =>void
}

let objArr : Person[] = [
  // 在数组中实现接口,可实现多个
  {name:'姓名1',age:18,gender:'男',sleep:(time:number)=>{console.log(`睡了${time}小时`)}},
  {name:'姓名2',age:19,gender:'女',sleep:(time:number)=>{console.log(`睡了${time}小时`)}},
  {name:'姓名3',age:20,gender:'男',sleep:(time:number)=>{console.log(`睡了${time}小时`)}}
]
// 通过数组索引调用
objArr[2].sleep(10)

// 通过for循环取出
for(let objItem of objArr){
  console.log('姓名是'+objItem.name)
}
@Entry
@Component
struct Page_Preview_ObjectArr {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_Preview_ObjectArrHelloWorld')
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