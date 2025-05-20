import { router } from '@kit.ArkUI'

@Entry
@Component
struct ActorPage {
  build() {
    Stack() {
      Image($r("app.media.douban_actor"))
      Button('电影')
        .translate({ x: 43, y: 80 })
        .onClick(() => {
          router.pushUrl({url:"pages/Demo_DouBan/Page_Demo_Movie"},router.RouterMode.Single)
        })
    }
    .height('100%')
  }
}