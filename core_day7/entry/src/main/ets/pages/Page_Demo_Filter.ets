// filter基本使用 02 - 筛选出价格大于 5 的食物
interface Food {
  name: string
  price: number
}

const foods: Food[] = [
  {
    name: '西兰花',
    price: 6
  },
  {
    name: '西红柿',
    price: 3
  },
  {
    name: '榴莲',
    price: 30
  },
  {
    name: '葱花',
    price: 1
  }
]
let food_filter = foods.filter((item)=>{
  return item.price>5
})
console.log('',JSON.stringify(food_filter))

// filter基本使用 03 - 筛选出战士
interface Hero {
  id: number
  name: string
  title: string
  type: string
  avatar: ResourceStr
}
const heroList: Hero[] = [
  {
    id: 116,
    avatar: $r('app.media.ic_avatar_116'),
    name: '阿轲',
    title: '信念之刃',
    type: '刺客'
  },
  {
    id: 117,
    avatar: $r('app.media.ic_avatar_117'),
    name: '钟无艳',
    title: '野蛮之锤',
    type: '战士'
  },
  {
    id: 118,
    avatar: $r('app.media.ic_avatar_118'),
    name: '孙膑',
    title: '逆流之时',
    type: '辅助'
  },
  {
    id: 119,
    avatar: $r('app.media.ic_avatar_119'),
    name: '扁鹊',
    title: '善恶怪医',
    type: '法师'
  },
  {
    id: 120,
    avatar: $r('app.media.ic_avatar_120'),
    name: '白起',
    title: '最终兵器',
    type: '坦克'
  },
  {
    id: 121,
    avatar: $r('app.media.ic_avatar_121'),
    name: '芈月',
    title: '永恒之月',
    type: '法师'
  },
  {
    id: 123,
    avatar: $r('app.media.ic_avatar_123'),
    name: '吕布',
    title: '无双之魔',
    type: '战士'
  },
  {
    id: 132,
    avatar: $r('app.media.ic_avatar_132'),
    name: '马可波罗',
    title: '远游之枪',
    type: '射手'
  },
  {
    id: 133,
    avatar: $r('app.media.ic_avatar_133'),
    name: '狄仁杰',
    title: '断案大师',
    type: '射手'
  },
]
let heroList_filter = heroList.filter((item)=>{
  return item.type == '战士'
})
let heroList_filter_name=heroList_filter.map((item)=>{
  return item.name
})
console.log('',heroList_filter_name)

@Entry
@Component
struct Page_Demo_Filter {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_Demo_FilterHelloWorld')
        .fontSize($r('app.float.page_text_font_size'))
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
        .onClick(() => {
          this.message = 'Welcome';
        })
    }
    .height('100%')
    .width('100%')
  }
}