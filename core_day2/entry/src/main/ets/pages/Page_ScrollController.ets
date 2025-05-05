@Entry
@Component
struct ScrollController {

   scroll:Scroller= new Scroller

  build() {
    Column({space:10}){
      Text('竖向滚动')
        .fontSize(20)
      Scroll(this.scroll){
        // 设置内容
        Column(){
          ForEach(Array.from({length:100}),(item:string,index:number)=>{
            Text(index.toString())
          })
        }
        .height(1000)
        .width('100%')
        .linearGradient({
          colors:[['#0094ff',0],[Color.Orange,1]],
        })
      }
      // 滚动事件
      .onWillScroll(()=>{
        console.log(this.scroll.currentOffset().yOffset.toString())
      })
      .scrollBarColor(Color.Pink)
      .scrollBarWidth(50)
      .scrollBar(BarState.Off)
      .edgeEffect(EdgeEffect.Spring)
      .width('100%')
      .height(200)
      .border({width:1,color:Color.Orange})

      Row(){
        Button('顶部')
          .onClick(()=>{
            // 回边缘
            // 类名.scrolledge(Edge.方位)
            this.scroll.scrollEdge(Edge.Top)
          })
        Button('底部')
          .onClick(()=>{
            this.scroll.scrollEdge(Edge.Bottom)
          })
        Button('计算滚动距离')
          .onClick(()=>{
            // 获取滚动距离
            // 类名.currentOffset().Xoffset/Yoffset
            console.log(this.scroll.currentOffset().xOffset.toString())
          })
      }

    }
    .width('100%')
    .height('100%')
  }
}