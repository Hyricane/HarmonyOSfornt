// 延时器
// 启用延时器：
// setTimeout(()=>{执行代码},时间),返回自身id:number
// 清除延时器clearTimeout(延时器id)
@Entry
@Component
struct Page_TimeOut {
  timeOutId : number | null = null

  build() {
   Column({space:20}){
     Button('打开定时器')
       .onClick(()=>{
         this.timeOutId = setTimeout(()=>{
           console.log('定时器执行')
         },3000)
       })
     Button('关机定时器')
       .onClick(()=>{
         clearTimeout(this.timeOutId)
       })
   }
    .height('100%')
    .width('100%')
  }
}