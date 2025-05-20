//Stand模式下页面来回跳转会不断生成新页面,将RouterMode改为Single来避免不断创建新页面
import { router } from '@kit.ArkUI'

@Entry
@Component
struct HomePage {
  build() {
    Stack() {
      Image($r("app.media.douban_home"))
        .width('100%')
      Button('电影详情')
        .translate({ x: -120 })
        .onClick(() => {
          router.pushUrl({url:"pages/Demo_DouBan/Page_Demo_Movie",})
        })
    }
    .height('100%')
  }
}