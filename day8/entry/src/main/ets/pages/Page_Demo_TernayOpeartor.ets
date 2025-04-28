@Entry
@Component
struct Page_Demo_TernayOpeartor {
  @State isFollow : boolean = true

  build() {
    Column(){
      Text(this.isFollow ? '+ 关注' : '已关注')
        .backgroundColor(this.isFollow ? Color.Blue : Color.Orange)
        .height(50)
        .width(100)
        .textAlign(TextAlign.Center)
        .borderRadius(25)
        .fontColor('#fff')
        .onClick(()=>{
          this.isFollow = !this.isFollow
        })
    }
    .width('100%')
    .height('100%')
  }
}