import { router } from '@kit.ArkUI';

@Entry
@Component
struct Page_Start {
  @State message: string = 'Hello Start';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_StartHelloWorld')
        .fontSize($r('app.float.page_text_font_size'))
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
        .onClick(() => {
          this.message = 'Welcome';
        })
      Button('跳转index')
        .onClick(()=>{
          router.pushUrl({url:'pages/Index'})
        })
    }
    .height('100%')
    .width('100%')
  }
}