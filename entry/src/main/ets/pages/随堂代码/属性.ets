import { Size } from '@ohos/hypium'

@Entry
@Component
struct Index {
  //鸿蒙中的属性写法
  // 设置样式使用类似调用方法的语法，若对容器进行定义则写在容器{}后，若对组件进行定义则写在()后
  // 需要注意的是，存在专用属性，不可混用，eg：fontSize()为文本组件专用属性
  // 语法：.属性(给定枚举或数值)
  build() {
    Column() {
      Text('小说简介')
        .fontSize(100)
        .fontWeight(FontWeight.Bolder)
      Row() {
        Text('都市')
          .backgroundColor(Color.Gray)
        Text('生活')
          .backgroundColor(Color.Blue)
        Text('情感')
          .backgroundColor(Color.Pink)
        Text('男频')
          .backgroundColor(Color.Orange)
      }
    }
    .alignItems(HorizontalAlign.Start)
  }
}
