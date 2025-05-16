@Entry
@Component
struct Page_Task_Plane {
  @State planePosition:number[]=[0,0]
  interId:number = 0
  build() {
    Stack({ alignContent: Alignment.Center }) {
      Image($r('app.media.ic_plane_01'))
        .width(50)
        .offset({ x: 0, y: 0 })
        .translate({x:this.planePosition[1],y:this.planePosition[0]})


      // 控制器
      Column({ space: 2 }) {
        Image($r('app.media.ic_public_arrow_up'))
          .width(40)
          .height(40)
          .border({ width: 1 })
          .onTouch((event:TouchEvent)=>{
            if (event.type==TouchType.Down) {
              this.interId = setInterval(()=>{
                this.planePosition[0]--
              },10)
            }else if (event.type==TouchType.Up){
              clearInterval(this.interId)
            }
          })

        Row({ space: 48 }) {
          Image($r('app.media.ic_public_arrow_left'))
            .width(40)
            .height(40)
            .border({ width: 1 })
            .onTouch((event:TouchEvent)=>{
              if (event.type==TouchType.Down) {
                this.interId = setInterval(()=>{
                  this.planePosition[1]--
                },10)
              }else if (event.type==TouchType.Up){
                clearInterval(this.interId)
              }
            })

          Image($r('app.media.ic_public_arrow_right'))
            .width(40)
            .height(40)
            .border({ width: 1 })
            .onTouch((event:TouchEvent)=>{
              if (event.type==TouchType.Down) {
                this.interId = setInterval(()=>{
                  this.planePosition[1]++
                },10)
              }else if (event.type==TouchType.Up){
                clearInterval(this.interId)
              }
            })

        }

        Image($r('app.media.ic_public_arrow_down'))
          .width(40)
          .height(40)
          .border({ width: 1 })
          .onTouch((event:TouchEvent)=>{
            if (event.type==TouchType.Down) {
              this.interId = setInterval(()=>{
                this.planePosition[0]++
              },10)
            }else if (event.type==TouchType.Up){
              clearInterval(this.interId)
            }
          })

      }
      .width('100%')
      .height('100%')
      .justifyContent(FlexAlign.End)
      .padding({ bottom: 20 })
    }
    .width('100%')
    .height('100%')
    .backgroundImage($r('app.media.ic_plane_background'))
    .backgroundImageSize({ width: '100%', height: '100%' })

  }
}


