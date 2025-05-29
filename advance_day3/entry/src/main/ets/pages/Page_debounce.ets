@Entry
@Component
struct Page_debounce {
  @State db_number: number = 1;
  timeId:number = 1
  build() {
    Column(){
      Counter(){
        Text(this.db_number.toString())
      }
      .onInc(()=>{
        //多次点击,只算最后一次 => 防抖
        // 1.执行逻辑放在定时器中
        //2.每次触发前先关闭定时器,使上一次定时顶掉当前定时
        clearTimeout(this.timeId)
        this.timeId=setTimeout(()=>{
          this.db_number++
        },300)
        //时间要恰巧比用户点击时间间隔多一点点,如此即不会给用户明显延迟,又可以触发防抖
      })
      .onDec(()=>{
        this.db_number--
      })
    }
    .height('100%')
    .width('100%')
  }
}