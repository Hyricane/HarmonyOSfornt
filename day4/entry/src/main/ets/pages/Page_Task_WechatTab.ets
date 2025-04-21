@Entry
@Component
struct Page_Task_WechatTab {
  @State message: string = 'Hello World';

  build() {
    Column(){
      Flex({
        justifyContent:FlexAlign.SpaceAround
      }){
        Column(){
          Image($r('sys.media.ohos_ic_public_email'))
            .width(30)
            .aspectRatio(1)
          Text('微信')
            .fontSize(13)
        }
        //组件2
        Column(){
          Image($r('sys.media.person_shield'))
            .width(30)
            .aspectRatio(1)
          Text('通讯录')
            .fontSize(13)
        }
        // 3
        Column(){
          Image($r('sys.media.wifi_router_fill'))
            .width(30)
            .aspectRatio(1)
          Text('发现')
            .fontSize(13)
        }
        // 4
        Column(){
          Image($r('sys.media.person_badge_waveform'))
            .width(30)
            .aspectRatio(1)
            .fillColor('#07C162')
          Text('我')
            .fontSize(13)
            .fontColor('#07C162')
        }
      }
      .backgroundColor('#ccc')
    }
  }
}