@Entry
@Component
struct Page_Preview_Demo_TernaryOperator {
  @State isClick : number = 1


  build() {
   Column(){
     Text(`${this.isClick%2 == 1 ? '已关注' : '+ 关注'}`)
       .width(300)
       .height(100)
       .textAlign(TextAlign.Center)
       .fontSize(50)
       .fontColor('#fff')
       .borderRadius(50)
       .backgroundColor(`${this.isClick%2 == 1 ? Color.Orange : Color.Blue}`)
       .onClick(()=>{
         this.isClick++
       })
   }
   .width('100%')
   .height('100%')
  }
}