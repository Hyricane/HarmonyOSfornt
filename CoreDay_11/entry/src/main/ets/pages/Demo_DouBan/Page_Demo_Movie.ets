import { router } from '@kit.ArkUI';

@Entry
@Component
struct MoviePage {
  @State message: string = 'Hello World';

  build() {
    Stack() {
      Image($r("app.media.douban_movie"))
        .width('100%')
      Button('演员')
        .translate({ x: -35, y: 180 })
        .onClick(() => {router.pushUrl({url:"pages/Demo_DouBan/Page_Demo_Actor",},router.RouterMode.Single)})
      Button('获取页面栈长度')
        .onClick(()=>{
          AlertDialog.show({message:router.getLength()})
        })
    }
    .height('100%')
  }
}