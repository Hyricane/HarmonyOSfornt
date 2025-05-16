@Component
struct addCom {
  opNum:number = 0
  //子组件的函数无法修改父组件中的状态变量
  addFn = (num:number) =>{}
  build() {
    Column() {
      Text('累加器')
        .fontSize(20)
      Row() {
        Button('点击+1')
          .onClick(()=>{
            this.addFn(1)
          })
        Button('点击+2')
          .onClick(()=>{
            this.addFn(2)
          })
        Button('点击+3')
          .onClick(()=>{
            this.addFn(3)
          })
        Button('点击+4')
          .onClick(()=>{
            this.addFn(4)
          })
      }
      .width('100%')
      .justifyContent(FlexAlign.SpaceBetween)
    }
    .border({ width: 1 })
    .padding(5)

  }
}

@Entry
@Component
struct Page04_callback {
  @State num: number = 0

  build() {
    Column() {
      Text('回调函数')
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
      Text('num:' + this.num)
        .fontSize(30)
      addCom({
        // 在父组件中将对状态变量的处理逻辑整合为函数,作为参数传递给子组件中的函数
        addFn:(opNum:number)=>{
          this.num+=opNum
        }
      })
    }
    .height('100%')
  }
}


