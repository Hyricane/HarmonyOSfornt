//for(初值;生效范围;初值自增/减){}
for (let i = 1;i<=10;i++){
  console.log(`打印第${i}次`)
}
// 累加
// let forRes : number = 0
// for (let y = 1;y<=10;y++){
//   forRes+=y
// }
// console.log('10以内的累加是',forRes)

// 偶数累加
let forRes : number = 0
for (let y = 1;y<=10;y++){
  if (y%2==0){
    forRes+=y
  }
}
console.log('10以内的偶数累加是',forRes)
@Entry
@Component
struct Page_Preview_For {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_Preview_ForHelloWorld')
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