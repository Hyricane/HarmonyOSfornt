import router from '@ohos.router'

//同AppStroage,但是会将数据存进磁盘以实现数据持久化
PersistentStorage.persistProp<number>('money',1000)

@Entry
@Component
struct Page_P_A {
  @StorageLink('money') money:number = 0

  build() {
    Column(){
      Text(''+this.money)
        .id('Page_P_AHelloWorld')
        .fontSize($r('app.float.page_text_font_size'))
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
        .onClick(() => {
          router.pushUrl({url:'pages/Pages_PersistentStorage/Page_P_B'})
        })
    }
    .height('100%')
    .width('100%')
  }
}