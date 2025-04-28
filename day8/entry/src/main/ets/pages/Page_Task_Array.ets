let taScores: number[] = [8, 7, 9, 2, 10, 11, 13, 12, 6]
let taRes:number = 0
//1．计算总分for of
for (let item of taScores){
  taRes+=item
}
console.log(taRes.toString())
// 2.计算平均分for of
for (let item of taScores){
  taRes+=item
}
console.log((taRes/taScores.length).toString())
// 3.计算最高分for of配合条件表达式
let temp = taScores[0]
for (let item of taScores){
  temp = item>temp?item:temp
}
// 3.计算最低分for of配合条件表达式
let temp1 = taScores[0]
for (let item of taScores){
  temp1 = item<temp1?item:temp1
}
console.log(temp1.toString())
@Entry
@Component
struct Page_Task_Array {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_Task_ArrayHelloWorld')
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