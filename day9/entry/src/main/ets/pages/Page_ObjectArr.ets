// 对象数组
// 首先定义接口
interface Phone {
  name:string,
  price:number,
  color:Color
}
// 在数组中实现接口
// 此时对象被遵循数组索引
let Phones : Phone[] = [
  {name:'xiaomi',price:1999,color:Color.White},
  {name:'huawei',price:2999,color:Color.Black},
  {name:'IPhone',price:3999,color:Color.Pink}
]
// 使用数组遍历实现对对象数组中某一属性的打印
for (let item of Phones){
  console.log(item.price.toString())
}

@Entry
@Component
struct Page_ObjectArr {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_ObjectArrHelloWorld')
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