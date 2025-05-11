@Entry
@Component
struct Page_TransitionEffect {
  @State isShow : boolean = true
  effect : object = TransitionEffect.OPACITY.animation({})

  build() {
    Column(){
        Text('测试')
          .width(300)
          .height(300)
          .backgroundColor(Color.Pink)
          .textAlign(TextAlign.Center)
          .transition(this.effect)
          .visibility(this.isShow ? Visibility.Visible:Visibility.Hidden)
      Button('切换显示')
        .onClick(()=>{
          this.isShow = !this.isShow
        })
    }
    .height('100%')
    .width('100%')
  }
}