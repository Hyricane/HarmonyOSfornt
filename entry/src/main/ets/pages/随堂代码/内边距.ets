import { Size } from '@ohos/hypium'

@Entry
@Component
struct Index {
  build() {
    // 内边距
    Column(){
    Text('测试文本')
      .backgroundColor(Color.Grey)
        // 可以传入一个数值，该方式下上下左右边距相等
      // .padding(50)
      .padding({
        // 也可以通过传入对象的方式对上下左右分别设置
        top:10,
        bottom:20,
        left:30,
        right:40
      })
    }
  }
}
