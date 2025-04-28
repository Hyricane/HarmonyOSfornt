// while循环
// while (条件){}
// 满足条件一直循环执行{}中代码,称为死循环
// 循环3要素:初始值,循环条件,变化量

let wCon : number = 0

while (wCon<10){
  console.log(`循环打印第${wCon+1}遍`)
  wCon++
}

@Entry
@Component
struct Page_While {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_WhileHelloWorld')
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