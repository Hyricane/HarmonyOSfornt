import * as data from '../models/data'
import { newCarList } from '../models/data'

@Entry
@Component
struct Page_DongCheDi {
  @State currentTabBarIndex_top:number = 0
  @State currentGridIndex:number = 0
  @State listTempArr:data.CarInfo[] = []
  @State listGroupIndex:number = 0
  @Builder
  tabBarBuilder_top(title:string,index:number){
    Stack(){
      Text(title)
        .fontSize(this.currentTabBarIndex_top==index?16:12)
        .fontWeight(this.currentTabBarIndex_top==index?600:0)
        .margin({right:10,bottom:3})
      Divider()
        .color(this.currentTabBarIndex_top==index?Color.Orange:Color.Transparent)//Orange
        .width(24)
        .strokeWidth(2)
        .margin({right:10})
    }
    .alignContent(Alignment.Bottom)
  }
  @Builder
  tabBarBuilder_nav(navItem:data.INavDate,colMargin:number,index_grid:number,type:string){
    Column({space:10}){
      Image(navItem.icon)
        .width(30)
        .aspectRatio(1)
        .backgroundColor(this.currentGridIndex==index_grid&&type=='bottom'?Color.Orange:Color.Transparent)
        .borderRadius(15)
      Text(navItem.title)
    }
    .margin({right:colMargin})
  }
  @Builder
  listHeader(title:string){
    Text(title)
      .width('100%')
      .height(20)
      .backgroundColor('#ccc')
  }

  scController:Scroller = new Scroller()
  build() {
    Column(){
      // 搜索区
      Image($r('app.media.home_top'))
        .width('100%')
      // tab区
      Tabs(){
        if (this.currentGridIndex==0){
          this.mainPageBuilder()
        }
        if (this.currentGridIndex==2){
          TabContent(){
            Tabs(){
              ForEach(data.carType,(typeItem:string,typeIndex:number)=>{
                TabContent(){
                  Column(){
                    List({scroller:this.scController}) {
                      ForEach(data.groupCarInfoList, (groupItem: data.GroupCarInfo) => {
                        ListItemGroup({ header: this.listHeader(groupItem.initial) }) {
                          ForEach(groupItem.carList, (listItem: data.CarInfo, listIndex: number) => {
                            ListItem() {
                              Row() {
                                Image(listItem.icon)
                                  .width(30)
                                  .aspectRatio(1)
                                Text(listItem.name)
                              }
                            }
                          })
                        }
                      })
                    }

                    // 左侧导航列表
                    Column() {
                      ForEach(data.navBarKeys, (keysItem: string) => {
                        Text(keysItem)
                          .fontColor(this.listGroupIndex == data.navBarKeys.indexOf(keysItem)?Color.Blue:'#ccc')
                          .backgroundColor(this.listGroupIndex == data.navBarKeys.indexOf(keysItem)?'#96D1FC':Color.Transparent)
                          .textAlign(TextAlign.Center)
                          .width(20)
                          .aspectRatio(1)
                          .onClick(() => {
                            // 点击A-Z的字母，定位到对应的分组位置
                            this.listGroupIndex = data.navBarKeys.indexOf(keysItem)
                            this.scController.scrollToIndex(this.listGroupIndex-1)
                          })
                      })
                    }
                    .position({ x: '90%', y: 0 })

                  }
                }
                .width('100%')
                .height('100%')
                .tabBar(this.tabBarBuilder_top(typeItem,typeIndex))
              })
            }
            .width('100%')
            .barPosition(BarPosition.Start)
          }
          .width('100%')
        }
      }
      .barHeight(50)
      .width('100%')
      .layoutWeight(1)
      .barMode(BarMode.Scrollable)
      .fadingEdge(false)
      .onChange((barIndex)=>{
        this.currentTabBarIndex_top = barIndex
      })
      //底部导航栏
      Grid(){
        ForEach(data.bottomNavList,(bottomNavItem:data.INavDate,gridIndex:number)=>{
          GridItem(){
            this.tabBarBuilder_nav(bottomNavItem,0,gridIndex,'bottom')
          }
          .onClick(()=>{
            this.currentGridIndex=gridIndex
          })
        })
      }
      .height(80)
      .width('100%')
      .columnsTemplate('1fr 1fr 1fr 1fr 1fr')
      .rowsTemplate('1fr')
    }
    .padding({left:10,right:10})
    .height('100%')
    .width('100%')
  }

  @Builder
  mainPageBuilder() {
    ForEach(data.channelList, (listTitle: string, index: number) => {
      TabContent() {
        Column() {
          //轮播图
          this.swiperBuilder()
          Tabs() {
            ForEach(data.navList, (navItem: data.INavDate) => {
              TabContent() {
                Column() {
                  Scroll() {
                    Column() {
                      Image($r('app.media.home_content_1'))
                      Image($r('app.media.home_content_2'))
                      Image($r('app.media.home_content_3'))
                    }
                  }
                  .scrollBar(BarState.Off)
                  .scrollable(ScrollDirection.Vertical)
                }
              }
              .width('100%')
              .height(500)
              .tabBar(this.tabBarBuilder_nav(navItem, 30, 0, 'top'))
            })
          }
          .barHeight(80)
          .barMode(BarMode.Scrollable)
          .fadingEdge(false)
        }
      }
      .tabBar(this.tabBarBuilder_top(listTitle, index))
    })
  }

  @Builder
  swiperBuilder() {
    //轮播图
    Row() {
      Swiper() {
        ForEach(data.swiperImg, (item: ResourceStr) => {
          Image(item)
            .width(360)
            .height(140)
        })
      }
      .loop(true)
      .autoPlay(true)
      .indicator(
        Indicator.dot()
          .itemWidth(3)
          .itemHeight(3)
          .selectedColor(Color.Orange)
          .color('#fff')
          .selectedItemWidth(20)
          .selectedItemHeight(3)
          .right(10)
      )
    }
    .width('100%')
  }
}