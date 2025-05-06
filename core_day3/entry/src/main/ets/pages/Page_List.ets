@Entry
@Component
struct Page_List {
  @State message: string = 'Hello World';

  build() {
    Column(){
      // 继承自Scroll
      List(){
        ForEach(Array.from({length:30}),(item:string)=>{
          ListItem(){
            Text('测试文本')
          }
        })
      }
      .width('100%')
      .height(300)
      .backgroundColor(Color.Pink)
    }
    .height('100%')
    .width('100%')
  }
}