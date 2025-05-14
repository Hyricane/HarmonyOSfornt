import { branchFilter, heroList, Hero } from '../data/HeroData2'

@Entry
@Component
struct Page09_heroFilter {
  // 分路数组
  branchList: string [] = branchFilter.split('|')
    .map(item => item.trim())
  // 选中的筛选条件
  @State selectedIndex: number = 0
  @State currentIndex:number = 0
  // 渲染用的数组
  @State heroList: Hero[] = heroList
  // 当前时间
  today: string = this.getTody()
  // 排序条件
  sortList: string[] = ['热度', '胜率', '登场率', 'Ban率']

  // 计算当前日期
  getTody() {
    // 计算当前日期
    const date = new Date()
    // 年月日
    const year = date.getFullYear()
    const month = date.getMonth() + 1
    const day = date.getDate()
    return `${year}/${month}/${day}`
  }

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
              Text('更新时间:' + this.today)
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
        ForEach(this.branchList, (item: string, index: number) => {
          ListItem() {
            Stack({ alignContent: Alignment.Bottom }) {
              Text(item)
                .height(40)
                .padding(10)
                .fontSize(16)
                .fontColor(this.selectedIndex == index ? Color.Black : '#aab1b4') //  默认'#aab1b4'/ 高亮 black
              // 底部的横线 高亮时显示，反之隐藏
              if (this.selectedIndex == index) {
                Text()
                  .height(4)
                  .width(20)
                  .borderRadius(2)
                  .backgroundColor(Color.Orange)
              }

            }
            .height(40)
          }
          .onClick(() => {
            this.selectedIndex = index
            this.heroList = heroList.filter((item_filter,index_filter)=>{
              if (this.selectedIndex == 0) {
                return true
              }else {
                return item_filter.branchRoads.includes(item)
              }
            })
          })
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
            ForEach(this.sortList,(item:string,index:number)=>{
              Text(item)
                .fontWeight(900)
                .fontColor(this.currentIndex == index ? '#37bdee':Color.Black) // 高亮 #37bdee 默认 Color.Black
                .onClick(()=>{
                  this.currentIndex = index
                  this.heroList.sort((a,b)=>{
                    if(this.currentIndex==0){
                      return 0
                    }else if(this.currentIndex==1){
                      return b.winRate-a.winRate
                    }else if (this.currentIndex==2){
                      return b.showRate-a.showRate
                    }else if (this.currentIndex==3){
                      return b.banRate-a.banRate
                    }else {
                      return 0
                    }
                  })
                })
            })
          }
        }
        .width('100%')
        .padding(10)

        // 列表区域
        List() {
          ForEach(this.heroList, (item: Hero, index: number) => {
            ListItem() {
              Row({ space: 14 }) {
                // 头像
                Image(item.heroIcon)
                  .width(40)
                  .borderRadius(10)
                // 昵称+分类
                Column({ space: 5 }) {
                  Text(item.heroName)
                  Text(item.heroCareer)
                    .fontSize(10)
                    .fontColor(Color.Gray)
                }
                .width(85)
                .alignItems(HorizontalAlign.Start)


                // 热度 胜率 登场率 Ban 率
                Text(item.tRank.toUpperCase())
                  .fontWeight(900)
                  .fontColor(this.currentIndex == 0?'#37bdee':Color.Black) // 高亮 '#37bdee' 默认 Color.Black
                Text((item.winRate * 100).toFixed(1)
                  .toString() + '%')
                  .width(45)
                  .fontSize(15)
                  .fontColor(this.currentIndex == 1?'#37bdee':Color.Black) // 高亮'#37bdee' 默认 Color.Black
                Text((item.showRate * 100).toFixed(1)
                  .toString() + '%')
                  .width(45)
                  .fontSize(15)
                  .fontColor(this.currentIndex == 2?'#37bdee':Color.Black) // 高亮'#37bdee' 默认 Color.Black
                Text((item.banRate * 100).toFixed(1)
                  .toString() + '%')
                  .width(45)
                  .fontSize(15)
                  .fontColor(this.currentIndex == 3?'#37bdee':Color.Black) // 高亮'#37bdee' 默认 Color.Black
              }
              .width('100%')
            }
            .padding(10)
            .height(60)

          })


        }
        .layoutWeight(1)
      }
      .layoutWeight(1)

    }
    .width('100%')
    .height('100%')
  }
}

// t0排序测试
heroList.forEach((item,index)=>{
  console.log('',item.tRank.slice(1))
})