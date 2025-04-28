// 取出该数组中大于10的数填入新数组
let dfoNums : number[] = [22, 3, 44, 55, 80, 10, 11, 5, -1]
let dfoNewNum : number[] = []
for (let dfoNum of dfoNums){
  if (dfoNum>10){
    dfoNewNum.push(dfoNum)
  }
}
console.log('新数组是',dfoNewNum)


@Entry
@Component
struct Page_Demo2_ForOf {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_Demo2_ForOfHelloWorld')
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