@Entry
@Component
struct Page_Eg_NovelDesc {
  @State message: string = 'Hello World';

  build() {
    Column() {
      Text('小说简介')
      Row() {
        Text('都市')// 宽,默认单位为vp,虚拟像素,该单位下无论手机分辨率如何,组件大小始终一致
          .width(50)// 高
          .height(30)// 背景色
          .backgroundColor(Color.Blue)
        Text('生活')
          .width(50)
          .height(30)
          .backgroundColor(Color.Pink)
        Text('情感')
          .width(50)
          .height(30)
          .backgroundColor(Color.Red)
        Text('男频')
          .width(50)
          .height(30)
          .backgroundColor(Color.Orange)
      }
    }
  }
}