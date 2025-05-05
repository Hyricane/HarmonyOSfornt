@Entry
@Component
struct Page_Demo_ScrollJD {
  scrollCon:Scroller = new Scroller()
  @State distance:number = 0
  build() {
    Column(){
      // main
      Scroll(this.scrollCon){
        Column(){
          Image($r('app.media.ic_jd_scroll_01'))
            .width('100%')
          Image($r('app.media.ic_jd_scroll_02'))
            .width('100%')
          Image($r('app.media.ic_jd_scroll_03'))
            .width('100%')
        }
      }
      .onWillScroll(()=>{
        this.distance = this.scrollCon.currentOffset().yOffset
      })
      .width('100%')
      .layoutWeight(1)
      .scrollBar(BarState.Off)
      //tab
      Image($r('app.media.ic_jd_tab'))
        .width('100%')
      Image($r('app.media.ic_jd_rocket'))
        .width(40)
        .aspectRatio(1)
        .borderRadius(20)
        .backgroundColor('#fff')
        .position({
          y:'80%',
          x:'80%'
        })
        .visibility(this.distance > 400 ? Visibility.Visible:Visibility.Hidden)
        .onClick(()=>{
          this.scrollCon.scrollEdge(Edge.Top)
        })
    }
    .height('100%')
    .width('100%')
  }
}