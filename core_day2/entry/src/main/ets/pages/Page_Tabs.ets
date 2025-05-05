@Entry
@Component
struct Page_Tabs {

  tabTitle:string[] = [
    '首页','推荐','发现','我的'
  ]
  build() {
    Column(){
      // Tab栏
      // 一个tab标题对应一个tab内容
      // Tabs(){//有且仅有TabContent(){}一种组件
      //   TabContent(){
      //     内容组件
      //   }
      //   .tabBar(tab标题)
      // }
      Tabs(){
        ForEach(this.tabTitle,(item:string)=>{
          TabContent(){
            Text(`${item}的内容`)
          }
          .tabBar(item)
        })
      }
      // 点击tab时触发事件,返回number型参数,为被点击tab的索引
      .onTabBarClick((index)=>{
        console.log(`点击了第${index}个tab`)
      })
      // tab被点击,滑动时触发事件,返回该tab索引
      .onChange((index)=>{
        console.log(`第${index}个tab发生变化`)
      })

      .vertical(false) //导航栏是否垂直
      .barPosition(BarPosition.End) //导航栏位置,配合是否垂直可以设置导航栏左右显示
      .scrollable(true) //是否支持滑动内容切换导航栏
      .animationDuration(0) //切换动画持续时间
      .scrollable(true)//导航超出容器时是否滚动
    }
    .height('100%')
    .width('100%')
  }
}