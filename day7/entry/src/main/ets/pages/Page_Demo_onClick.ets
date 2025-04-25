@Entry
@Component
struct Page_Demo_onClick {
  @State opacityNum: number = 1
  @State y:string = '10%'
  @State angle : number = 0

  build() {
    Column() {
      Column() {
        Image($r('app.media.Demo_click'))
        Image($r('sys.media.ohos_ic_public_close'))
          .onClick(()=>{
            this.opacityNum = 0
          })
          .width(16)
          .height(16)
          .backgroundColor('rgba(0,0,0,0.2)')
          .padding(3)
          .borderRadius(8)
          .position({ x: 0, y: 0 })
      }
      .width(50)
      .height(50)
      .position({ x: '10%', y:this.y })
      .opacity(this.opacityNum)
      // 动画效果必须写在属性最后一行
      .rotate({angle:this.angle})
      .animation({duration:5000})
      Button('撒红包')
        .onClick(()=>{
          this.opacityNum = 1
          this.y = '80%'
          this.angle  =360
        })
    }
  }
}