@Entry
@Component
struct Page_Badge {
  @State message: string = 'Hello World';

  build() {
    Column(){
      // Badge(){}容器组件可以为包含在其中的容器添加气泡
      // Badge({对象}){被操作的容器}
      Badge({
        count:1,
        style:{

        }
      }){
        Text('右上角气泡')
          .width(100)
          .aspectRatio(1)
          .backgroundColor(Color.Pink)
      }
    }
    .height('100%')
    .width('100%')
  }
}