import { router } from '@kit.ArkUI'

@Entry
@Component
struct Page_P_B {

  @StorageLink('money') money:number=0
  build() {
    Column(){
      Button('返回')
        .onClick(()=>{
          router.back()
        })
      Text(''+this.money)
        .id('Page_P_BHelloWorld')
        .fontSize($r('app.float.page_text_font_size'))
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
        .onClick(() => {
          this.money++
        })
    }
    .height('100%')
    .width('100%')
  }
}