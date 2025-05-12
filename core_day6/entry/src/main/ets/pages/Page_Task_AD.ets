@Entry
@Component
struct Page_Task_ad {
  @State adSeconds:number = 5
  interId : number|null = null
  effect : object = TransitionEffect.asymmetric(
    TransitionEffect.IDENTITY,
    TransitionEffect.OPACITY.animation({duration:500})
  )
  build() {
    Column(){
      Stack(){
        Image($r('app.media.open_content'))
          .width('100%')
          .height('100%')
        Stack(){
          Image($r('app.media.open_ad'))
            .width('100%')
            .height('100%')
          Text(`${this.adSeconds}跳过`)
            .width(80)
            .height(30)
            .fontColor('#fff')
            .backgroundColor('rgba(0,0,0,0.4)')
            .borderRadius(15)
            .textAlign(TextAlign.Center)
            .position({x:'70%',y:20})
            .onAppear(()=>{
              this.interId = setInterval(()=>{
                this.adSeconds--
                if (this.adSeconds==0) {
                  clearInterval(this.interId)
                }
              },1000)
            })
            .onClick(()=>{
              this.adSeconds = 0
            })
        }
        .transition(this.effect)
        .visibility(this.adSeconds!=0?Visibility.Visible:Visibility.Hidden)
      }
      .width('100%')
      .height('100%')
    }
    .height('100%')
    .width('100%')
  }
}