import { router } from '@kit.ArkUI'

export interface Person{
  name:string,
  age:number
}
// UIability中共享数据
// 1.使用AppStorage.setOrCreate('键',值)创建数据,单次创建单个数据,可多次调用
AppStorage.setOrCreate('money',1000)
AppStorage.setOrCreate('car','su7')
AppStorage.setOrCreate('zs',{
  name:'zs',
  age:18
})

@Entry
@Component
struct Page_App_A {
  // 2.使用@StorageProp/link('键') 键:类型 = 初值 获取数据
  @StorageProp('money') money:number = 0
  @StorageProp('car') car:string = 'su7'
  @StorageProp('zs') zs:Partial<Person> = {}
  build() {
    Column() {
      Button('操作数据')
        .onClick(()=>{
          //更改数据
          AppStorage.set<number>('money',1200)
          //获取数据但不渲染
          AppStorage.get<number>('money')

          //使用Link操作类获取/更改数据
          let link:SubscribedAbstractProperty<number> = AppStorage.link('money')
          link.get()
          // link.set('键',值)
        })
      Text(`${this.money},${this.car},${this.zs.name},${this.zs.age}`)
        .id('Page_App_AHelloWorld')
        .fontSize($r('app.float.page_text_font_size'))
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
        .onClick(() => {
          router.pushUrl({
            url:'pages/AppStroage/Page_App_B'
          })
        })
    }
    .height('100%')
    .width('100%')
  }
}