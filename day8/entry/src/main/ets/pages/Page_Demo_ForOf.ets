let foNums : number[] = []
let foRes : number = 0
for (let count = 1;count <=10;count++){
  foNums.push(count)
}
for (let foNum of foNums){
  foRes+=foNum
}
console.log(foRes.toString())
@Entry
@Component
struct Page_Demo_ForOf {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_Demo_ForOfHelloWorld')
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