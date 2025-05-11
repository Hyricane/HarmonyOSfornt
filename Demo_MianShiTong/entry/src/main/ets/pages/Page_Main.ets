interface tabContent{
  selIcon:ResourceStr,
  icon:ResourceStr,
  title:string,
  index:number
  // contentBuilder:CustomBuilder
}


@Entry
@Component
struct Page_Me {
  @State curIndex:number = 0
  tabItems:tabContent[] = [
    {icon:$r('app.media.ic_home'),selIcon:$r('app.media.ic_home_actived'),title:'首页',index:0},
    {icon:$r('app.media.ic_practice'),selIcon:$r('app.media.ic_practice_active'),title:'项目',index:1},
    {icon:$r('app.media.ic_practice1'),selIcon:$r('app.media.ic_practice_active2'),title:'面经',index:2},
    {icon:$r('app.media.ic_practice_2'),selIcon:$r('app.media.ic_practice2'),title:'我的',index:3},
  ]

  courseNameArr:string[] = ['HTML5','CSS','移动端布局','鸿蒙']
  @Builder
  courseBuilder(couName:string){
    Row(){
      Text(couName)
        .fontSize(14)
        .fontWeight(500)
      Image($r('sys.media.ohos_ic_public_arrow_right'))
        .width(20)
        .aspectRatio(1)
    }
    .backgroundColor('#fff')
    .justifyContent(FlexAlign.SpaceBetween)
    .padding({left:16,right:16})
    .width(328)
    .height(52)
  }

  @Builder
  tabBarBuilder(icon:ResourceStr,title:string){
    Column({space:2}){
      Image(icon)
        .width(28)
        .aspectRatio(1)
      Text(title)
        .fontSize(11)
        .fontWeight(400)
    }
  }

  @Builder
  tabContentBuilder(){

      ForEach(this.tabItems,(item:tabContent,tabIndex:number)=>{
        this.projectPageBuilder()
      })

  }

  @Builder
  mainPageBuilder(tabIndex: number, item: tabContent) {
    TabContent() {
      // 首页主体
      Column() {
        // 搜索
        this.searchBuilder()

        // banner
        Image($r('app.media.banner'))
          .width(328)
          .height(126)
          .margin({ top: 18, bottom: 24 })
        // 训练专区
        Column({ space: 8 }) {
          Text('训练专区')
            .width('100%')
            .fontWeight(500)
          Row({ space: 8 }) {
            Image($r('app.media.ic_front'))
              .width(160)
              .height(110)
            Image($r('app.media.ic_harmony'))
              .width(160)
              .height(110)
          }
        }
        .margin({ bottom: 24 })

        // 辅助工具
        Column({ space: 8 }) {
          Text('辅助工具')
            .width('100%')
            .fontWeight(500)
          Row({ space: 8 }) {
            Row() {
              Text('小面AI')
                .fontSize(14)
                .fontWeight(500)
              Image($r('app.media.Slice_3'))
                .width(30)
                .aspectRatio(1)
            }
            .backgroundColor('#F6F7F9')
            .width(160)
            .height(78)
            .borderRadius(8)
            .padding({ left: 12, right: 16 })
            .justifyContent(FlexAlign.SpaceBetween)

            Row() {
              Text('前端常用词')
                .fontSize(14)
                .fontWeight(500)
              Image($r('app.media.Slice_3_1'))
                .width(30)
                .aspectRatio(1)
            }
            .backgroundColor('#F6F7F9')
            .width(160)
            .height(78)
            .borderRadius(8)
            .justifyContent(FlexAlign.SpaceBetween)
            .padding({ left: 12, right: 16 })
          }
        }
        .margin({ bottom: 24 })

        // 知识点学习
        Column() {
          Text('知识点学习')
            .height(52)
            .width('100%')
            .fontWeight(500)
          List({ space: 16 }) {
            ForEach(this.courseNameArr, (item: string) => {
              ListItem() {
                this.courseBuilder(item)
              }
            })
          }

        }
        .width('100%')
        .layoutWeight(1)
        .borderRadius(8)
        .backgroundColor('#F6F7F9')
      }
      .padding({ left: 16, right: 16 })
      .width('100%')
      .height('100%')
    }
    .tabBar(this.tabBarBuilder(this.curIndex == tabIndex ? item.selIcon : item.icon, item.title))
  }

  @Builder
  searchBuilder() {
    // 搜索
    Row({ space: 16 }) {
      Stack({ alignContent: Alignment.Start }) {
        Image($r('sys.media.AI_search'))
          .width(12)
          .aspectRatio(1)
          .margin({ left: 10 })
        TextInput({ placeholder: '请输入关键词' })
          .placeholderFont({ size: 12 })
          .padding({ left: 32 })
      }
      .layoutWeight(1)

      Image($r('app.media.ic_mark'))
        .width(24)
        .aspectRatio(1)
    }
  }

  @Builder
  projectCardBuilder(imgUrl:ResourceStr,title:string) {
    Row() {
      Image(imgUrl)
        .width(60)
        .height(80);
      Column() {
        Text(title)
          .fontSize(14);
        Column({ space: 4 }) {
          Text() {
            Span('10')
              .fontColor('#4171EF');
            Span('/12节 | 已学进度：10%')
              .fontColor('#ccc');
          }
          .fontSize(12);

          Blank()
            .width(230)
            .height(2)
            .backgroundColor('#ccc');
        }
        .alignItems(HorizontalAlign.Start);
      }
      .alignItems(HorizontalAlign.Start)
      .justifyContent(FlexAlign.SpaceBetween)
      .layoutWeight(1)
      .height('100%')
      .padding(8);
    }
    .backgroundColor('#fff')
    .borderRadius(8)
    .margin({ bottom: 11 })
    .width(328)
    .height(96)
  }

  @Builder
  projectPageBuilder(){
    Column(){
      Text('项目')
        .width('100%')
        .padding({left:16,right:16})
        .fontSize(24)
        .fontWeight(400)
      this.projectCardBuilder($r('app.media.ic_cover1'),'后台管理系统')
      this.projectCardBuilder($r('app.media.ic_cover2'),'在线问诊项目')
    }
    .backgroundColor('#F9F9F9')
  }

  @Builder
  mjPageBuilder(){
    Column(){
      this.searchBuilder()
      Tabs(){
        TabContent(){
          List() {
            ForEach(Array.from({ length: 7 }), () => {
              ListItem(){
                Column({space:8}){
                  Text(){
                    ImageSpan($r('app.media.ic_practice_active'))
                      .width(15)
                      .aspectRatio(1)
                      .margin({right:5})
                    Span('面经 | 2021美团3面经验总结')
                      .fontSize(14)
                      .fontWeight(500)
                  }
                  Text('这里是我写的面经正文，行数限制“2”行，超出两行…显示')
                    .fontSize(14)
                    .fontWeight(400)
                    .width('98%')
                  Text(){
                    Span('点赞10 | 浏览10 |')
                      .fontSize(12)
                      .fontColor('#ccc')
                    ImageSpan($r('sys.media.ohos_ic_public_share'))
                      .margin({left:10})
                      .width(11)
                  }
                }
                .alignItems(HorizontalAlign.Start)
              }
              .width(360)
              .height(131)
            })
          }
        }
        .tabBar('占位')
      }
    }
    .padding({left:16,right:16})
    .width('100%')
    .height('100%')
  }

  build() {
    Column(){
      Tabs() {
        this.mjPageBuilder()
      }
      .width('100%')
      .barPosition(BarPosition.End)
    }
    .height('100%')
    .width('100%')
  }
}


