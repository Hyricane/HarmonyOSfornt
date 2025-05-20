import { router } from '@kit.ArkUI';

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('HelloWorld')
        .fontSize($r('app.float.page_text_font_size'))
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
        .onClick(() => {
          this.message = 'Welcome';
          router.back()
        })
      Row(){
        Button('清空页面栈')
          .onClick(()=>{
            router.clear()
          })
        Button('获取页面数量')
          .onClick(()=>{
            AlertDialog.show({message:router.getLength()})
          })
        Button('获取页面状态')
          .onClick(()=>{
            AlertDialog.show({message:JSON.stringify(router.getState())})
          })
      }
      .width('100%')
    }
    .height('100%')
    .width('100%')
  }
}