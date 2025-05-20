import { router } from '@kit.ArkUI';

@Entry
@Component
struct Page_Share_1 {
  @State message: string = 'Hello World';

  build() {
    Row({ space: 15 }) {
      Column({ space: 10 }) {
        Image('https://qna.smzdm.com/202404/01/660a60fac2f4c6567.jpg_e680.jpg')
          .width('100%')
          .aspectRatio(1)
        Text('小米创世版第二轮开售，一分钟秒没，我劝大家荔枝一点')
      }
      // 对两个页面中需要动画的相同组件添加,以实现转场效果
      // .sharedTransition('标识(两页面中相同,以实现绑定)',{效果})
      .sharedTransition('share_1',{
        duration:100
      })
      .padding(15)
      .width('50%')
      .onClick(() => {
        router.pushUrl({
          url:'pages/ShareTransition/Page_Share_2'
        })
      })
    }
    .width('100%')
  }
}