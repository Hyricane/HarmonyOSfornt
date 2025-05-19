// 使用@Provide和@Consume绑定父组件和后代组件的数据双向流动
// @Provide修饰提供方数据
// @Consume修饰接收方数据
@Component
struct SunComp {
  @Consume count:number
  build() {
    Text('我是SunComp'+this.count)
      .width('50%')
      .height('50%')
      .backgroundColor(Color.Pink)
      .onClick(()=>{
        this.count++
      })
  }
}

@Component
struct SonComp {
  build() {
    Column(){
      Text('我是SonComp')
      SunComp()

    }
    .width('50%')
    .height('50%')
    .backgroundColor(Color.Green)

  }
}

@Entry
@Component
struct Page_03_Provide_Consume {
  @Provide count:number = 10
  build() {
    Column() {
      Text('我是Page'+this.count)
      SonComp()
    }
    .height('100%')
    .width('100%')
    .backgroundColor(Color.Orange)
  }
}