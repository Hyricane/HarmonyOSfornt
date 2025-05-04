@Entry
@Component
struct Page_RowColumnSum {
  gridArr:number[] = Array.from({length:12})

  build() {
    Column(){
      Grid(){
        ForEach(this.gridArr,(item:number,index:number)=>{
          if (index == 2) {
            GridItem(){
              Text(index.toString())
                .fontSize(20)
            }
            .rowStart(1)
            .rowEnd(2)
            .backgroundColor('#8df')
          } else if(index == 8){
            GridItem(){
              Text(index.toString())
                .fontSize(20)
            }
            .columnStart(1)
            .columnEnd(2)
            .backgroundColor('#8df')
          }
          else {
            GridItem(){
              Text(index.toString())
                .fontSize(20)
            }
            .backgroundColor('#8df')
          }
        })
      }
      .columnsTemplate('1fr 1fr 1fr')
      .rowsTemplate('1fr 1fr 1fr 1fr')
      .columnsGap(10)
      .rowsGap(10)
      .width('100%')
      .height(300)
    }
    .height('100%')
    .width('100%')
  }
}