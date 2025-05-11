@Entry
@Component
struct Page_ListItemGroup {
  @Builder listGroupHeader(){
    Text('分组')
      .backgroundColor(Color.Grey)
  }

  build() {
    Column(){
      List(){
        ListItemGroup({
          // 分组头部结构
          header:this.listGroupHeader,
          // 底部结构
          footer:this.listGroupHeader(),
          // 组内间距
          space:10
        }){
          ListItem(){
              Text('分组1')
          }
          ListItem(){
            Text('分组1')
          }
        }
        // 组件分割线
        .divider({
          strokeWidth:1,
          color:Color.Black
        })
        ListItemGroup({
          header:this.listGroupHeader
        }){
          ListItem(){
            Text('分组2')
          }
          ListItem(){
            Text('分组2')
          }
        }
        ListItemGroup({
          header:this.listGroupHeader
        }){
          ListItem(){
            Text('分组3')
          }
        }
      }
    }
    .height('100%')
    .width('100%')
  }
}