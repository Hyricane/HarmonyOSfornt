import { router } from '@kit.ArkUI';

export interface Person{
  name:string,
  age:number
}

let person:Record<string,Person>={
  'stu':{
    name:'张三',
    age:1
  }
}

export  let store = new LocalStorage(person)

@Entry(store)
@Component
struct Page_LS_1 {
  @LocalStorageLink('stu') store:Partial<Person> = {}
  build() {
    RelativeContainer() {
      Button('改数据')
        .onClick(()=>{
          this.store.age!++
        })
      Text(`页面1:姓名:${this.store.name}年龄:${this.store.age}`)
        .id('Page_LS_1HelloWorld')
        .fontSize($r('app.float.page_text_font_size'))
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
        .onClick(() => {
          router.pushUrl({
            url:'pages/LocalStroage/Page_LS_2'
          })
        })
    }
    .height('100%')
    .width('100%')
  }
}