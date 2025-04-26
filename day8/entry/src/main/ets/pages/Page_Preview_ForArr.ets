// 循环打印数组内容
// for (let 变量名 of 数组名){}
let arr : number[] = [1,2,3,4,5,6]
for (let arrCon of arr){
  console.log('',arrCon)
}

@Entry
@Component
struct Page_Preview_ForArr {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_Preview_ForArrHelloWorld')
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