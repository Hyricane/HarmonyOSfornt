interface Food_res {
  name: string
  price: number
  count: number
}

const foods_res: Food_res[] = [
  {
    name: '西兰花',
    price: 6,
    count: 2
  },
  {
    name: '西红柿',
    price: 3,
    count: 3
  },
  {
    name: '榴莲',
    price: 30,
    count: 2
  },
  {
    name: '葱花',
    price: 1,
    count: 10
  }
]

let demoRdRes = foods_res.reduce((sum,item)=>{
  return sum+item.price*item.price
},0)
console.log(demoRdRes.toString())

@Entry
@Component
struct Page_Demo_Reduce {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_Demo_ReduceHelloWorld')
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