@Entry
@Component
struct Page_Demo_Swiper_XiaoMi {
  @State imgUrl:string[] = ['01','02','03','04']

  build() {
    Column(){
      Swiper(){
        ForEach(this.imgUrl,(item:string)=>{
          Image($r(`app.media.ic_swiper_xmyp${item}`))
        })
      }
      .width('100%')
      .height(160)
      .interval(4000)
      .autoPlay(true)
      .indicator(
        Indicator.dot()
          .itemWidth(10)
          .itemWidth(4)
          .selectedItemWidth(30)
          .selectedItemHeight(4)
          .selectedColor(Color.White)
      )
    }
    .height('100%')
    .width('100%')
  }
}