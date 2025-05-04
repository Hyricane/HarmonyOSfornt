interface TaoBaoItemContent {
  title: string
  icon: ResourceStr // $r('图片名')返回的是 Resource 类型， ResourceStr 是联合类型 Resource|string
}

@Entry
@Component
struct Page_Demo_Taobao2thFloor {
  @Builder
  TopBuilder(){
    Row() {
      Image($r('app.media.ic_taobao_back'))
        .fillColor(Color.White)
        .width(30)
      Text('最近使用')
        .fontSize(20)
        .fontColor(Color.White)
    }
    .width('100%')
    .padding({ top: 40 })
  }

  @Builder
  SearchBuilder(){
    Stack() {
      Text()
        .width('100%')
        .height(40)
        .backgroundColor(Color.White)
        .opacity(.3)
        .borderRadius(20)
      Row({ space: 10 }) {
        Image($r('app.media.ic_taobao_search'))
          .width(25)
          .fillColor(Color.White)
        Text('搜索')
          .fontSize(15)
          .fontColor(Color.White)
      }
      .padding({ left: 10 })
      .width('100%')
    }
    .padding(10)
  }

  @Builder
  GridBuilder(){
    Grid(){
      ForEach(this.contentList,(item:TaoBaoItemContent)=>{
        GridItem(){
          Column({space:10}){
            Image(item.icon)
              .width(40)
              .aspectRatio(1)
            Text(item.title)
              .fontSize(12)
              .fontColor(Color.White)
          }
        }
      })
    }
    .width('100%')
    .height(360)
    .columnsTemplate('1fr 1fr 1fr 1fr 1fr')
    .rowsTemplate('1fr 1fr 1fr 1fr 1fr')
    .columnsGap(10)
  }
  // 对于不可变的布局,一般不加状态变量装饰器,以节省资源
  contentList: TaoBaoItemContent[] = [
    { title: '淘金币', icon: $r('app.media.ic_taobao_01') },
    { title: '一起摇现金', icon: $r('app.media.ic_taobao_02') },
    { title: '闲鱼', icon: $r('app.media.ic_taobao_03') },
    { title: '中通快递', icon: $r('app.media.ic_taobao_04') },
    { title: '芭芭农场', icon: $r('app.media.ic_taobao_05') },
    { title: '淘宝珍库', icon: $r('app.media.ic_taobao_06') },
    { title: '阿里拍卖', icon: $r('app.media.ic_taobao_07') },
    { title: '阿里药房', icon: $r('app.media.ic_taobao_08') },
    { title: '小黑盒', icon: $r('app.media.ic_taobao_09') },
    { title: '菜鸟', icon: $r('app.media.ic_taobao_10') },
    { title: 'U先试用', icon: $r('app.media.ic_taobao_11') },
    { title: '有好价', icon: $r('app.media.ic_taobao_12') },
    { title: '极有家', icon: $r('app.media.ic_taobao_13') },
    { title: '天猫榜单', icon: $r('app.media.ic_taobao_14') },
    { title: '天天特卖', icon: $r('app.media.ic_taobao_15') },
    { title: '每日好店', icon: $r('app.media.ic_taobao_16') },
    { title: '全球购', icon: $r('app.media.ic_taobao_17') },
    { title: '我的爱车', icon: $r('app.media.ic_taobao_18') },
    { title: '造点新货', icon: $r('app.media.ic_taobao_19') },
    { title: '首单优惠', icon: $r('app.media.ic_taobao_20') },
    { title: '潮Woo', icon: $r('app.media.ic_taobao_21') },
    { title: '亲宝贝', icon: $r('app.media.ic_taobao_22') },
    { title: '领券中心', icon: $r('app.media.ic_taobao_23') },
    { title: '天猫奢品', icon: $r('app.media.ic_taobao_24') },
    { title: 'iFashion', icon: $r('app.media.ic_taobao_25') }
  ]


  build() {
    Column(){
      // 最近使用
      this.TopBuilder()
      // 搜索栏
      this.SearchBuilder()
      // grid
      this.GridBuilder()
    }
    .height('100%')
    .width('100%')
    .linearGradient({
      colors: [
        ['#271b41', 0],
        ['#481736', 1],
      ]
    })
  }
}