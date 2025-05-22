import { router } from '@kit.ArkUI';
import { Person, store } from './Page_LS_1';

@Entry(store)
@Component
struct Page_LS_2 {
  @LocalStorageProp('stu') store:Partial<Person>={}
  build() {
    RelativeContainer() {
      Text(`页面2:${this.store.name}${this.store.age}`)
        .id('Page_LS_2HelloWorld')
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