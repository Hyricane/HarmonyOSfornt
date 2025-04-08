import { Size } from '@ohos/hypium'

@Entry
@Component
struct Index {
  // 外边距：只传入一个则下上下左右边距相等
  build() {
    Column(){
      Text('测试文本1')
        .backgroundColor(Color.Red)
        .margin({
          // 通过传入对象，分别设置上下左右4个边距
        bottom:10
      })
      Text('测试文本2')
        .backgroundColor(Color.Green)
        .margin({
          bottom:10
        })
      Text('测试文本3')
        .backgroundColor(Color.Blue)
        .margin({
          bottom:10
        })
      Row(){
        Text('测试文本1')
          .backgroundColor(Color.Red)
          .margin({
            right:10
          })
        Text('测试文本2')
          .backgroundColor(Color.Green)
          .margin({
            right:10
          })
        Text('测试文本3')
          .backgroundColor(Color.Blue)
          .margin({
            right:10
          })
      }
    }
  }
}
