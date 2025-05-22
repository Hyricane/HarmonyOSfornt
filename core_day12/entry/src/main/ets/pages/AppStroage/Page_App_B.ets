import { router } from '@kit.ArkUI';
import { Person } from './Page_App_A';

@Entry
@Component
struct Page_App_B {
  @StorageLink('money') money:number=0
  @StorageLink('car') car:string = 'su7'
  @StorageLink('zs') zs:Partial<Person> = {}

  build() {
    Column(){
      Button('改数据')
        .onClick(()=>{
          this.money++
          this.car='su8'
          this.zs.name='lisi'
          this.zs.age!++
        })
      Text(`${this.money},${this.car},${this.zs.name},${this.zs.age}`)
        .id('Page_App_BHelloWorld')
        .fontSize($r('app.float.page_text_font_size'))
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
        .onClick(() => {
          router.back()
        })
    }
    .height('100%')
    .width('100%')
  }
}