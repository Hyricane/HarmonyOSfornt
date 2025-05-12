//定时器
// 不同于延时器，定时器会间隔给定的时间循环执行
// setInterval(()=>{执行代码},间隔时间)
// clearInterval(id)
@Entry
@Component
struct Page_TimeInterval {
  timeInterId : number | null = null

  build() {
    Column({space:20}){
      Button('启用定时器')
        .onClick(()=>{
          this.timeInterId=setInterval(()=>{
            console.log('定时器执行')
          },2000)
        })
      Button('关闭定时器')
        .onClick(()=>{
          clearInterval(this.timeInterId)
        })
    }
    .height('100%')
    .width('100%')
  }
}