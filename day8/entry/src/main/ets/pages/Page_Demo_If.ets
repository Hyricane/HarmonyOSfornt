@Entry
@Component
struct Page_Demo_If {
  @State ifCount : number = 1
  build() {
    Column() {
      Row() {
        Text('-')
          .width(20)
          .height(20)
          .border({width: 1, color: '#999', radius: {topLeft: 3, bottomLeft:3}})
          .textAlign(TextAlign.Center)
          .onClick(()=>{
            if (this.ifCount>1) {
              this.ifCount--
            }
          })

        Text(this.ifCount.toString())
          .height(20)
          .padding({left: 10, right: 10})
          .border({width: {top: 1, bottom: 1}, color: '#999'})
          .fontSize(14)

        Text('+')
          .width(20)
          .height(20)
          .border({width: 1, color: '#999', radius: {topRight: 3, bottomRight: 3}})
          .textAlign(TextAlign.Center)
          .onClick(()=>{
            if (this.ifCount<9) {
              this.ifCount++
            }
          })
      }
    }
    .padding(20)
  }
}