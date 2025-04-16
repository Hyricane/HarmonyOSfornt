// 选择题
// 1.下面哪个选项是用于打印输出信息的语句？C
// A. print()
// B. logO
// C. console.log()
// D. outputO
// 2.string类型表示什么？C
// A.一个对象
// B.一个函数
// C.一个数据类型
// D.一个数组
// 简答题
// 常用的数据类型有哪些
// 数字:number
// 字符串:String
// 布尔型:Boolean

// 代码题

// 作业1
let mobile:string = '12332544365'
let code:number = 9527
let isAgree:boolean = true
// 作业2
let appliances:string[] = ['冰箱','彩电','大沙发']
console.log(appliances[1])
// 作业3
let sumScore=(score1:number,score2:number,score3:number)=>{
  let result:number = score1+score2+score3
  return result
}
function sumScore1(score1:number,score2:number,score3:number){
  let result:number = score1+score2+score3
  return result
}
console.log('高三一班三个同学总分是',sumScore(87,98,56))
console.log('高三二班三个同学总分是',sumScore1(67,58,100))
console.log('高三三班三个同学总分是',sumScore(97,68,56))
// 作业4
let mulPrice = (num:number,price:number)=>{
  let result:number = num*price
  return result
}
function mulPrice1(num:number,price:number){
  let result:number = num*price
  return result
}
console.log('鞋子的总价是',mulPrice(372,5))
console.log('衣服的总价是',mulPrice1(450,2))
// 进阶
let mulPrice3 = (shoeNum:number,shoePrice:number,colthNum:number,clothPrice:number)=>{
  let result:number=shoeNum*shoePrice+colthNum*clothPrice
  return result
}
console.log('两种商品的总价是',mulPrice3(372,5,450,2))
// 作业4
interface Car{
  brand:string,
  price:number,
  num:number,
  run:()=>void,
    oil:(oil:number)=>number
}
let chanllger:Car={
  brand:'Doch',
  price:399999,
  num:10,
  run:()=>{
    console.log('汽车开动')
  },
  oil:(oil:number)=>{
    return oil
  }
}
let AMG:Car={
  brand:'Benciz',
  price:399999,
  num:10,
  run:()=>{
    console.log('汽车开动')
  },
  oil:(oil:number)=>{
    return oil
  }

}
chanllger.run()
console.log('汽车的油量是',chanllger.oil(100))

@Entry
@Component
struct Page_homeWork {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_homeWorkHelloWorld')
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