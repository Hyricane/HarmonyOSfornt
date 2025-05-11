// 剩余参数
// 对于不定的函数参数可以采用剩余参数数组定义，传入的参数作为数组储存
// function 函数名(参数1,...剩余参数数组[]){}
let num:number
function rpFun(...nums:number[]){
  for(num of nums){
    console.log(num.toString())
  }
}
rpFun(1,2,3,4,5,6,7,8,9)


@Entry
@Component
struct Page_RemainPram {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_RemainPramHelloWorld')
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