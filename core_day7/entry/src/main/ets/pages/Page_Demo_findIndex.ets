interface Champion {
  id: number
  name: string
  title: string
}

const championList: Champion[] = [
  {
    id: 116,
    name: '阿轲',
    title: '信念之刃',
  },
  {
    id: 117,
    name: '钟无艳',
    title: '野蛮之锤',
  },
  {
    id: 118,
    name: '孙膑',
    title: '逆流之时',
  },
  {
    id: 119,
    name: '扁鹊',
    title: '善恶怪医',
  },
  {
    id: 120,
    name: '白起',
    title: '最终兵器',
  },
  {
    id: 121,
    name: '芈月',
    title: '永恒之月',
  },
  {
    id: 123,
    name: '吕布',
    title: '无双之魔',
  },
  {
    id: 132,
    name: '马可波罗',
    title: '远游之枪',
  },
  {
    id: 133,
    name: '狄仁杰',
    title: '断案大师',
  },
]

// 找到名字是 【钟无艳】 的索引
let dfiNameRes = championList.findIndex((item,index)=>{
  return item.name == '钟无艳'
})
// 找到外号是 【无双之魔】的索引
let dfiTitleRes = championList.findIndex((item,index)=>{
  return item.title == '无双之魔'
})
console.log(dfiNameRes.toString())
console.log(dfiTitleRes.toString())

@Entry
@Component
struct Page_Demo_findIndex {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_Demo_findIndexHelloWorld')
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