@Entry
@Component
struct Page_Share_2 {
  @State message: string = 'Hello World';

  build() {
    Column({ space: 15 }) {
      Column({ space: 10 }) {
        Image('https://qna.smzdm.com/202404/01/660a60fac2f4c6567.jpg_e680.jpg')
          .width('100%')
          .aspectRatio(1)
        Text('小米创世版第二轮开售，一分钟秒没，我劝大家荔枝一点')
          .fontSize(18)
      }
      .sharedTransition('share_1',{
        duration:100
      })
      .padding(15)
      .onClick(() => {
      })
    }
    .height('100%')
    .width('100%')
  }
}