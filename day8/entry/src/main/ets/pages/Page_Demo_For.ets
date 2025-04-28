// 1-100偶数求和
let fdCount : number = 1
let fdRes : number = 0

for (fdCount;fdCount<=100;fdCount++){
  if (fdCount%2==0){
    fdRes+=fdCount
  }
}
console.log('结果是',fdRes)

@Entry
@Component
struct Page_Demo_For {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_Demo_ForHelloWorld')
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