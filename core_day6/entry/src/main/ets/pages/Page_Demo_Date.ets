@Entry
@Component
struct Date01 {
  @State year : number = new Date().getFullYear()
  @State moth : number = new Date().getMonth()+1
  @State day : number = new Date().getDate()
  @State hours : number = new Date().getHours()
  @State minutes : number = new Date().getMinutes()
  @State seconds : number = new Date().getSeconds()
  build() {
    Column() {
      Column() {
        Text(`${this.year}年${this.moth}月${this.day}日`)
          .fontColor(Color.White)
          .fontSize(20)
        Stack() {
          Row({ space: 10 }) {
            Text(this.hours.toString().padStart(2,'0'))
              .textStyle()
            Text(this.minutes.toString().padStart(2,'0'))
              .textStyle()
            Text(this.seconds.toString().padStart(2,'0'))//补两位0
              .textStyle()
              .onAppear(()=>{
                setInterval(()=>{
                  this.seconds=new Date().getSeconds()
                  this.minutes=new Date().getMinutes()
                  this.hours=new Date().getHours()
                },1000)
              })
          }

          Divider()
            .strokeWidth(2)
            .color(Color.Black)
        }
        .padding(10)

        Text('Stay hungry,Stay foolish')
          .fontColor(Color.White)
          .fontSize(18)
      }

    }
    .width('100%')
    .height('100%')
    .backgroundColor(Color.Black)
    .justifyContent(FlexAlign.Center)
  }
}


@Extend(Text)
function textStyle() {
  .width(100)
  .height(100)
  .backgroundColor('#191919')
  .borderRadius(10)
  .textAlign(TextAlign.Center)
  .fontColor(Color.White)
  .fontSize(70)
  .fontWeight(900)
}