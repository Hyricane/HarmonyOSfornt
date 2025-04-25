@Entry
@Component
struct Page_onClick {
  @State boxcolor:string = '#8df'
  build() {
    Column({space:10}){
      Text('点击我')
        .width(100)
        .height(100)
        .backgroundColor(this.boxcolor)
        // 单击事件
        // .onClick(()=>{})
        // 被点击时执行函数内容
        .onClick(()=>{
          this.boxcolor = '#ccc'
        })

      Text('点击我')
        .width(100)
        .height(100)
        .backgroundColor(Color.Pink)
          // 单击事件
          // .onClick(()=>{})
          // 被点击时执行函数内容
        .onClick(()=>{
          console.log('被点击')
        })
    }
    .width('100%')
    .height('100%')
  }
}