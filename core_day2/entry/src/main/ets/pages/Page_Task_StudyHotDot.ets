interface banner {
  imgUrl:ResourceStr,
  title:string
}

interface Nav{
  imgUrl:ResourceStr,
  info:string
}

interface List_Item{
  imgUrl:ResourceStr,
  info:string,
  time:string
}

interface tabBar{
  text:string,
  badgeCount:number,
  index:number
}

@Entry
@Component
struct Page_Task_StudyHotDot {

  banners:banner[] = [
    {imgUrl:$r('app.media.banner_01_1'),title:'谷歌杀入开源大模型，凭什么问鼎王座？'},
    {imgUrl:$r('app.media.banner_01_2'),title:'微软牵手OpenAI劲敌！Mistral顶级大模型不再开源'},
    {imgUrl:$r('app.media.banner_01_3'),title:'生成式AI会扼杀DevSecOps吗'},
    {imgUrl:$r('app.media.banner_01_3'),title:'微软继续Linux化！sudo原生命令强势登录Windows'}
  ]

  navItem:Nav[] = [
    {imgUrl:$r('app.media.ic_01_1'),info:'精选内容'},
    {imgUrl:$r('app.media.ic_01_2'),info:'学堂'},
    {imgUrl:$r('app.media.ic_01_3'),info:'鸿蒙开发者社区'},
    {imgUrl:$r('app.media.ic_01_4'),info:'博客'},
    {imgUrl:$r('app.media.ic_01_5'),info:'企业培训'},
    {imgUrl:$r('app.media.ic_01_6'),info:'Next训练营'},
    {imgUrl:$r('app.media.ic_01_7'),info:'精培'},
  ]

  // 热门推荐ListItem
  list_Item:List_Item[] = [
    {imgUrl:$r('app.media.list_02_1'),info:'字节一面：TCP和UDP可以使用同一个端口号吗？',time:'2024-03-05 10:07:22'},
    {imgUrl:$r('app.media.list_02_2'),info:'NoSQL：在高并发场景下，数据库和NoSQL如何做到互补？',time:'2024-03-05 10:03:17'},
    {imgUrl:$r('app.media.list_02_3'),info:'处理大规模并发请求时如何设计和优化Python后端服务的架构和性能',time:'2024-03-05 10:03:09'},
    {imgUrl:$r('app.media.list_02_4'),info:'C++右值引用：解锁高效内存管理与性能优化的奥秘',time:'2024-03-05 09:55:00'},
    {imgUrl:$r('app.media.list_02_5'),info:'现代分布式系统架构的权衡分析',time:'2024-03-05 09:52:57'},
  ]

  tab_bar:tabBar[] = [
    {text:'首页',index:0,badgeCount:0},
    {text:'视频',index:1,badgeCount:0},
    {text:'消息',index:2,badgeCount:0},
    {text:'我的',index:3,badgeCount:0}
  ]

  @State tab_index:number = 0

  @Builder
  // ListItem
  listBulider(){
      ForEach(this.list_Item,(item:List_Item,index:number)=>{
        ListItem(){
          Row({space:10}){
            Image(item.imgUrl)
              .height(80)
              .borderRadius(10)
            Column(){
              Text(item.info)
                .fontSize(14)
              Text(item.time)
                .fontSize(12)
            }
            .alignItems(HorizontalAlign.Start)
            .height(80)
            .layoutWeight(1)
            .justifyContent(FlexAlign.SpaceBetween)
          }
          .padding({left:10,right:10,top:15,bottom:15})
        }
        .width('100%')
      })
  }

  @Builder
  // 导航栏网格
  Nav(){
    Grid(){
      ForEach(this.navItem,(item:Nav)=>{
        GridItem(){
          Column({space:5}){
            Image(item.imgUrl)
              .width(40)
              .aspectRatio(1)
            Text(item.info)
              .fontSize(14)
          }
        }
        .width('25%')
        .height('100%')
      })
    }
    .height(65)
    .scrollBar(BarState.Off)
    .margin({top:10})
    .rowsTemplate('1fr')
    .rowsGap(24)
  }

  @Builder
  // tabbar
  tabBarBulider(text:string,conut:number,tabConIndex:number){
    Badge({count:tabConIndex == 2 ? 9:0,style:{},position:{x:25,y:-5}}){
      Text(text)
        .fontWeight(tabConIndex == this.tab_index ? FontWeight.Bolder : 0)
    }
  }

  @Builder
  mainPageBulider() {
    Column() {
      // banner区
      Swiper() {
        ForEach(this.banners, (item: banner) => {
          Stack() {
            Image(item.imgUrl)
            Text(item.title)
              .margin({
                left: 10,
                bottom: 30
              })
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
              .fontColor('#fff')
          }
          .alignContent(Alignment.BottomStart)
        })
      }
      .autoPlay(true)
      .indicator(
        Indicator.dot()
          .itemWidth(30)
          .itemHeight(5)
          .color('rgba(0,0,0,0.4)')
          .selectedItemWidth(30)
          .selectedColor('#fff')
          .left(20)
      )
      .width('100%')
      .height(250)

      // 滚动栅格
      Row() {
        this.Nav()
      }
      .width('100%')
      .padding({ left: 12 })
      .margin({ bottom: 10 })
      .shadow({
        offsetY: 2,
        radius: 1,
        color: 'rgba(0,0,0,0.1)',
      })

      // 热门推荐List
      Text('热门推荐')
        .margin({ top: 10, bottom: 10, left: 20 })
        .fontWeight(600)
        .width('100%')
        .fontSize(20)
      List() {
        this.listBulider()
      }
      .layoutWeight(1)
      .width('100%')
      .divider({
        strokeWidth: 1,
        startMargin: 10,
        endMargin: 10,
        color: '#ccc'
      })
    }
  }

  build() {
    // 主体
    Column(){
      // 头部
      Row(){
        Image($r('app.media.hot_01'))
          .width(60)
        Row({space:15}){
          Image($r('app.media.user_01'))
            .width(20)
          Image($r('app.media.more_01'))
            .width(20)
        }
      }
      .height(56)
      .justifyContent(FlexAlign.SpaceBetween)
      .padding({
        left:28,
        right:16
      })
      .width('100%')
      // tab
      Tabs(){
        ForEach(this.tab_bar,(item:tabBar,index:number)=>{
          TabContent(){
            this.mainPageBulider()
          }
          .tabBar(this.tabBarBulider(item.text,item.badgeCount,index))
        })
      }
      .onTabBarClick((index)=>{
        this.tab_index = index
      })
      .width('100%')
      .layoutWeight(1)
      .barPosition(BarPosition.End)
    }
    .height('100%')
    .width('100%')
  }

}