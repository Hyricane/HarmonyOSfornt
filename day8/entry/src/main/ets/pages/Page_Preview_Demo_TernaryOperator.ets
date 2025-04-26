@Entry
@Component
struct Page_Preview_Demo_TernaryOperator {
  @State isClick : boolean = false


  build() {
   Column(){
     Text(`${this.isClick == true ? '已关注' : '+ 关注'}`)
       .width(300)
       .height(100)
       .textAlign(TextAlign.Center)
       .fontSize(50)
       .fontColor('#fff')
       .borderRadius(50)
       .backgroundColor(`${this.isClick == true ? Color.Orange : Color.Blue}`)
       .onClick(()=>{
         this.isClick = true
       })
   }
   .width('100%')
   .height('100%')
  }
}