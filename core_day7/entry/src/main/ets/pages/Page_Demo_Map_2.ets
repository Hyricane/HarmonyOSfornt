interface HeroData {
  id: number
  name: string
  title: string
}

// 有头像数据的接口
interface HeroDataPlus {
  id: number
  name: string
  title: string
  avatar: ResourceStr
}


const heroArr: HeroData[] = [
  { id: 123, name: '吕布', title: '无双之魔' },
  { id: 124, name: '周瑜', title: '铁血都督' },
  { id: 126, name: '夏侯惇', title: '不羁之风' },
  { id: 127, name: '甄姬', title: '洛神降临' },
  { id: 128, name: '曹操', title: '鲜血枭雄' }
]

let heroArrPlus = heroArr.map<HeroDataPlus>((item,index)=>{
  return{
    id:item.id,
    name:item.name,
    title:item.title,
    avatar:$r(`app.media.ic_avatar_${item.id}`)
  }
})

@Entry
@Component
struct Page_Demo_Map_2 {
  @State message: string = 'Hello World';

  build() {
    Column() {
      List({ space: 10 }) {
        ForEach(heroArrPlus,(item:HeroDataPlus,index)=>{
          ListItem() {
            Row({ space: 10 }) {
              Image(item.avatar)
                .width(50)
                .borderRadius(10)
              Column({ space: 10 }) {
                Text(item.name) // 名字
                Text(item.title)// 外号
                  .fontSize(12)
                  .fontColor(Color.Gray)
              }
              .alignItems(HorizontalAlign.Start)
            }
            .backgroundColor('#f8f9fc')
            .width('100%')
            .padding(5)
            .borderRadius(10)
          }
        })
      }

    }
    .width('100%')
    .height('100%')
    .padding(20)
  }
}