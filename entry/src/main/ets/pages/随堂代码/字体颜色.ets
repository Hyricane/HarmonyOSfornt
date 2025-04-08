import { Size } from '@ohos/hypium'

@Entry
@Component
struct Index {
  build() {
    Column(){
      Text('学鸿蒙就来黑马')
        .width('100%')
        .fontSize(30)
      Row(){
        Text('置顶 ')
          .fontColor(Color.Red)
        Text('新华社 ')
          .fontColor(Color.Grey)
        Text('4680评论 ')
          .fontColor(Color.Grey)
      }
      .width('100%')
    }
    .width('100%')
  }
}
