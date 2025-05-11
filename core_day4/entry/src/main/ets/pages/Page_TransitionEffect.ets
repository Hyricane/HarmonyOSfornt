@Entry
@Component
struct Page_TransitionEffect {
  @State isShow : boolean = true
  // 转场动画:
  // 1.在struct外定义对象，类型为object
  // 2.在对应的组件下通过.transition(对象名)

  effect : object = TransitionEffect
    .OPACITY.animation({})
    // 使用combine联合多种效果
    .combine(TransitionEffect.translate({x:10,y:20}))
    .combine(TransitionEffect.rotate({angle:90}))
    .combine(TransitionEffect.scale({x:10,y:10}))

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