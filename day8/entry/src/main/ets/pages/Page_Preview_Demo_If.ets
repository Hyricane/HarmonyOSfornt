@Entry
@Component
struct Page_Preview_Demo_IF {
  @State ifCount : number = 1

  build() {
    Column(){
      Row(){
        Text('-')
          .width(50)
          .aspectRatio(1)
          .border({width:{right:1}})
          .textAlign(TextAlign.Center)
          .onClick(()=>{
            if (this.ifCount>0) {
              this.ifCount--
            }
          })
        Text(this.ifCount.toString())
          .textAlign(TextAlign.Center)
          .layoutWeight(1)
        Text('+')
          .width(50)
          .aspectRatio(1)
          .border({width:{left:1}})
          .textAlign(TextAlign.Center)
          .onClick(()=>{
            this.ifCount++
          })
      }
      .width(200)
      .height(50)
      .border({
        width:1,
        radius:10
      })
    }
    .width('100%')
    .height('100%')
  }
}