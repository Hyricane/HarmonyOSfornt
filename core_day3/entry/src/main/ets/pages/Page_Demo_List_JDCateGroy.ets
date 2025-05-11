@Entry
@Component
struct Page_Demo_List_JDCateGroy {
  @State cateGroyList:string[] = ['食品', '电器', '洗护', '女装', '手机', '健康', '男装', '美妆', '电脑', '运动', '内衣', '母婴', '食品', '电器',
    '洗护', '女装', '手机', '健康', '男装', '美妆', '电脑', '运动', '内衣', '母婴']

  @State currentIndex:number = 0

  build() {
    Column(){
      Text('分类')
        .width(100)
        .textAlign(TextAlign.Center)
      List(){
        ForEach(this.cateGroyList,(item:string,index:number)=>{
          ListItem() {
            Text(item)
              .textAlign(TextAlign.Center)
          }
          .backgroundColor(this.currentIndex==index?Color.Pink:Color.Gray)
          .onClick(()=>{
            this.currentIndex = index
          })
          .width(100)
          .height(60)
        })
      }
      .backgroundColor(Color.Pink)
      .width(100)
      .layoutWeight(1)
    }
    .alignItems(HorizontalAlign.Start)
    .height('100%')
    .width('100%')
  }
}