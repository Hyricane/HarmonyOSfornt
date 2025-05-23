import { CQData, Hero, HeroType, NavItem } from './data/CQData'
import router from '@ohos.router'

PersistentStorage.persistProp('heroList',CQData.getHeroList())
@Entry
@Component
struct Page01_homework_cq {
  // 筛选条件
  @State selectedType: HeroType|null = null
  // 获取导航数据，不更改 不需要加@State
  navList: NavItem[] = CQData.getNavList()
  @StorageLink('heroList') heroList:Hero[]=[]
  build() {
    Stack({ alignContent: Alignment.BottomEnd }) {
      Column() {
        // 顶部
        // 顶部
        Stack() {
          Row({ space: 10 }) {
            // 还原 图标
            Image($r('app.media.ic_public_view_list'))
              .width(25)
              .onClick(()=>{
                this.heroList = CQData.getHeroList()
              })

            Blank()
            Image($r('app.media.ic_public_search'))
              .width(25)
            Badge({ count: 2, style: {} }) {
              Image($r('app.media.ic_public_message'))
                .width(25)
            }
          }
          .width('100%')
          .padding(10)

          Text('wiki-首页')
            .fontWeight(900)
        }


        // Logo + 类型
        Row({ space: 20 }) {
          Image($r('app.media.ic_cq_logo'))
            .width(150)
            .onClick(()=>{
              this.selectedType=null
            })
          Divider()
            .vertical(true)
            .height(50)
            .strokeWidth(2)

          Text(this.selectedType)
            .fontSize(25)
            .fontWeight(900)
        }
        .width('100%')
        .padding(10)


        // 类型选择
        Row({ space: 10 }) {
          ForEach(this.navList, (item: NavItem, index: number) => {
            Image(item.icon)
              .layoutWeight(1)
              .backgroundColor(this.selectedType == item.type ? Color.Black : Color.Transparent)
              .padding(5)
              .borderRadius(10)
              .onClick(() => {
                this.selectedType = item.type
              })
          })
        }
        .padding(10)


        // 列表
        List() {
          // 顶部标题
          ListItem() {
            Row() {
              Text('英雄')
                .fontWeight(900)
                .fontSize(20)
                .layoutWeight(1)
              Text('技能')
                .fontWeight(900)
                .fontSize(20)
                .layoutWeight(1)
              Text('装备')
                .fontWeight(900)
                .fontSize(20)
                .layoutWeight(1)
                .textAlign(TextAlign.Center)
            }
            .padding(10)
          }

          // 基于选中的英雄 type 筛选出对应的数组，渲染到页面上
          ForEach(this.selectedType==null?this.heroList:this.heroList.filter((item)=>{return this.selectedType==item.type})
            ,(item: Hero, index: number) => {
            // 列表项目
            ListItem() {
              Row({ space: 10 }) {
                Column({ space: 5 }) {
                  // 英雄-头像
                  Image(item.heroIcon)
                    .width('60%')
                  // 英雄-名字
                  Text(item.heroName)
                    .fontSize(14)
                }
                .alignItems(HorizontalAlign.Start)
                .layoutWeight(1)

                Column({ space: 5 }) {
                  // 技能-图片
                  Image(item.skillIcon)
                    .width('60%')
                  // 技能-名字
                  Text(item.skillName)
                    .fontSize(14)
                }
                .alignItems(HorizontalAlign.Start)
                .layoutWeight(1)

                Column({ space: 5 }) {
                  // 装备-图片
                  Image(item.weaponIcon)
                    .width('60%')
                  // 装备-名字
                  Text(item.weaponName)
                    .fontSize(14)
                    .alignSelf(ItemAlign.Center)
                }
                .layoutWeight(1)
              }
              .padding(10)

            }
            .swipeAction({
              end: this.delAction(item.id.toString())
            })
          },(item:Hero,index)=>{return item.id.toString()})

        }
        .layoutWeight(1)
        .divider({ strokeWidth: 1, color: Color.Gray, startMargin: 10, endMargin: 10 })

      }
      .width('100%')
      .height('100%')
    }
  }

  // 删除用的 Builder
  @Builder
  delAction(selId:string) {
    Image($r('app.media.ic_public_delete'))
      .width(60)
      .backgroundColor('#ec6073')
      .fillColor(Color.White)
      .padding(10)
      .borderRadius(30)
      .margin(10)
      .onClick(()=>{
        this.heroList=this.heroList.filter((item)=>{
          return item.id != Number(selId)
        })
      })
  }
}

