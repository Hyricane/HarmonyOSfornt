interface tabItem{
  title:string,
  icon:ResourceStr,
  index:number,
  selIc:ResourceStr,
  tabContent:ResourceStr
}

@Entry
@Component
struct Page_BuilderTabBar {

  @State curTabIndex:number = 0

  tabList:tabItem[] = [
    {title:'首页',icon:$r('app.media.ic_tabbar_icon_0'),index:0,selIc:$r('app.media.ic_tabbar_icon_0_selected'),tabContent:$r('app.media.ic_xiaomi_content_00')},
    {title:'分类',icon:$r('app.media.ic_tabbar_icon_1'),index:1,selIc:$r('app.media.ic_tabbar_icon_1_selected'),tabContent:$r('app.media.ic_xiaomi_content_01')},
    {title:'',icon:$r('app.media.ic_xiaomi_center_tabBar'),index:2,selIc:$r('app.media.ic_xiaomi_center_tabBar'),tabContent:$r('app.media.ic_xiaomi_content_02')},
    {title:'购物车',icon:$r('app.media.ic_tabbar_icon_2'),index:3,selIc:$r('app.media.ic_tabbar_icon_2_selected'),tabContent:$r('app.media.ic_xiaomi_content_03')},
    {title:'我的',icon:$r('app.media.ic_tabbar_icon_3'),index:4,selIc:$r('app.media.ic_tabbar_icon_3_selected'),tabContent:$r('app.media.ic_xiaomi_content_04')},
  ]
  @Builder
  tabBar(title:string,icon:ResourceStr,index:number,selIc:ResourceStr,tabContent:ResourceStr){
    Column(){
      Image(this.curTabIndex == index ? selIc:icon)
        .width(index == 2 ? '100%':40)
        .aspectRatio(1)
        .borderRadius(index == 2 ? 16:0)
        .translate({
          y:index == 2 ? -20 : 0
        })
      Text(title)
        .fontColor(this.curTabIndex == index ? Color.Orange:Color.Black)
    }
  }

  build() {
    Column(){
        Tabs(){
          ForEach(this.tabList,(item:tabItem,index:number)=>{
          TabContent(){
            Image(item.tabContent)
              .layoutWeight(1)
          }
          .tabBar(this.tabBar(item.title,item.icon,item.index,item.selIc,item.tabContent))
          })
        }
        .barPosition(BarPosition.End)
        .onChange((index)=>{
          this.curTabIndex = index
        })

    }
    .height('100%')
    .width('100%')
  }
}