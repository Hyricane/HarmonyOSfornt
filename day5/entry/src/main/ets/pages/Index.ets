@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    Column() {
      Scroll() {
        Column({space:20}) {
          Column(){
          }
          .width(300)
          .aspectRatio(1)
          .backgroundColor(Color.Pink)

          Column(){
          }
          .width(300)
          .aspectRatio(1)
          .backgroundColor(Color.Pink)

          Column(){
          }
          .width(300)
          .aspectRatio(1)
          .backgroundColor(Color.Pink)

          Column(){
          }
          .width(300)
          .aspectRatio(1)
          .backgroundColor(Color.Pink)
        }
        }
      }
      .width('100%')
      .height('100%')
    }
}