// 数组映射为对象数组
interface food{
  name:string,
  price:number
}

const foodArr = ['花菜', '西兰花', '菜花','西北风']
// 泛型为接口
let foodObjArr = foodArr.map<food>((item,index)=>{
  // 映射返回值为对象
  return{
    name:item,
    price:Math.floor((Math.random()*6)+5)
  }
})
// JSON.stringify()所有类型强转为字符串
console.log(JSON.stringify(foodObjArr))

@Entry
@Component
struct Page_Demo_Map_1 {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_Demo_Map_1HelloWorld')
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