import * as data from '../data/HeroData'
@Entry
@Component
struct Page07_RankList {

  @State currentNavIndex:number = 0
  date:Date = new Date
  build() {
    Column() {
      // 底部区域
      Stack({ alignContent: Alignment.Top }) {
        // 背景图
        Image($r('app.media.ic_bg_517'))
          .height(180)
          .width('100%')

        // 操作栏
        Stack() {
          Row() {
            // 左
            Image($r('app.media.ic_public_arrow_left'))
              .width(24)
              .fillColor(Color.White)
            // 右
            Row({ space: 10 }) {
              Image($r('app.media.ic_public_question'))
                .width(24)
                .fillColor(Color.White)
              Image($r('app.media.ic_public_share'))
                .width(24)
                .fillColor(Color.White)
            }
          }
          .width('100%')
          .justifyContent(FlexAlign.SpaceBetween)

          // 中间文本
          Column() {
            Row() {
              Text('英雄热度榜')
                .fontColor(Color.White)
              Image($r('app.media.ic_public_arrow_down'))
                .width(20)
                .fillColor(Color.White)
            }

            Row({ space: 5 }) {
              Text(`更新时间:${this.date.getFullYear()}-${this.date.getMonth()+1}-${this.date.getDate()}`)
                .fontColor(Color.White)
                .fontSize(10)
              Text('算法测试中')
                .fontColor(Color.White)
                .fontSize(9)
                .backgroundColor('37bdee')
                .padding(1)
                .borderRadius({ topLeft: 6, bottomRight: 6 })
            }
          }
          .layoutWeight(1)
        }
        .padding({ top: 10, left: 10, right: 10 })
        .zIndex(2)
        .height(55)
        .backgroundColor(`rgba(0, 0, 0, 0.2)`)
      }

      // 筛选区域
      // 段位筛选 tabFilter
      List({ space: 25 }) {
        ForEach(data.branchFilter.split('|'),(item:string,navIndex:number)=>{
          this.navBuilder(item,navIndex)
        })
      }
      .listDirection(Axis.Horizontal)
      .scrollBar(BarState.Off)
      .width('100%')
      .height(50)

      // 英雄列表
      Column() {
        // 顶部区域
        Row() {
          Text('英雄')
            .fontWeight(900)
          Blank()
          Row({ space: 10 }) {
            Text('热度')
              .fontWeight(900)
            Text('胜率')
              .fontWeight(900)
            Text('登场率')
              .fontWeight(900)
            Text('Ban率')
              .fontWeight(900)
          }
        }
        .width('100%')
        .padding(10)

        // 列表区域
        List() {
          ForEach(data.heroList,(hreoItem:data.Hero,listIndex:number)=>{
            this.listItemBuilder(hreoItem)

          })
        }
      }
      .layoutWeight(1)

    }
    .width('100%')
    .height('100%')
  }

  @Builder
  listItemBuilder(hreoItem: data.Hero) {
    ListItem() {
      Row({ space: 14 }) {
        // 头像
        Image(hreoItem.heroIcon)
          .width(40)
          .borderRadius(10)
        // 昵称+分类
        Column({ space: 5 }) {
          Text(hreoItem.heroName)
          Text(hreoItem.heroCareer)
            .fontSize(10)
            .fontColor(Color.Gray)
        }
        .width(70)
        .alignItems(HorizontalAlign.Start)

        Blank()
        // 热度 胜率 登场率 Ban 率
        Text(hreoItem.tRank)
          .fontWeight(900)
        Text(`${this.tansformPercent(hreoItem.winRate)}%`)
          .width(45)
          .fontSize(15)
        Text(`${this.tansformPercent(hreoItem.showRate)}%`)
          .width(45)
          .fontSize(15)
        Text(`${this.tansformPercent(hreoItem.banRate)}%`)
          .width(45)
          .fontSize(15)
      }
      .width('100%')
    }
    .padding(10)
  }

  private tansformPercent(num:number): string {
    return (num * 100).toFixed(1)
  }

  @Builder
  navBuilder(title:string,navIndex:number) {
    ListItem() {
      Stack({ alignContent: Alignment.Bottom }) {
        Text(title)
          .height(40)
          .padding(10)
          .fontSize(16)
          .fontColor(this.currentNavIndex == navIndex?Color.Black:'#aab1b4') //  默认'#aab1b4'/ 高亮 black


        // 底部的横线 高亮时显示，反之隐藏
        if (this.currentNavIndex == navIndex){
          Text()
            .height(4)
            .width(20)
            .borderRadius(2)
            .backgroundColor(Color.Orange)
        }
      }
      .height(40)
    }
    .onClick(()=>{
      this.currentNavIndex = navIndex
    })
  }
}