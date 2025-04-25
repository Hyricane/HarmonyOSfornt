@Entry
@Component
struct Page_Task_Sum {
  @State T_price : number = 10
  @State T_count : number = 20

  build() {
    Column(){
      Row(){
        Text(`商品单价:${this.T_price},购买数量:${this.T_count},总计:${this.T_price*this.T_count}`)
          .fontWeight(600)
      }
      .padding({left:20,right:20})
      .backgroundImage($r('app.media.bg_banner'))
      .backgroundImageSize(ImageSize.Cover)
      .width(300)
      .aspectRatio(3)
    }
    .width('100%')
    .height('100%')
  }
}