@Entry
@Component
struct Page_List {
  @State message: string = 'Hello World';

  build() {
    Column(){
      // 列表
      // 继承自Scroll
      // List(){
      //   ListItem(){
      //
      //   }
      // }
      List(){
        ForEach(Array.from({length:30}),(item:string)=>{
          ListItem(){
            Text('测试文本')
          }
        })
      }
      // 主轴方向
      .listDirection(Axis.Vertical)
      // 滚动条属性 auto(默认),拖拽时显示,两秒后隐藏
      .scrollBar(BarState.Auto)
      // 分割线
      // .divider({属性})
      .divider({
        // 分割线粗细
        strokeWidth:2,
        // 分割线颜色
        color:Color.Grey,
        // 分割线左边距
        startMargin:10,
        // 分割线右边距
        endMargin:10
      })
      .width('100%')
      .height(300)
      .backgroundColor(Color.Pink)
    }
    .height('100%')
    .width('100%')
  }
}