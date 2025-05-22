import { router } from '@kit.ArkUI'
import { User } from '../Task/LoginPage'

interface Tool {
  icon: ResourceStr
  name: string
  value?: string
  onClick?: () => void
}

@Entry
@Component
export struct MyCenterPage {
  @StorageLink('user') user:Partial<User> = {}
  @Builder
  toolsBuilder(tool: Tool) {
    Row() {
      Image(tool.icon)
        .width(16)
        .aspectRatio(1)
        .margin({ right: 12 })
      Text(tool.name)
        .fontSize(14)
      Blank()
      if (tool.value) {
        Text(tool.value)
          .fontSize(12)
          .fontColor('#979797')
      }
    }
    .height(50)
    .width('100%')
    .padding({ left: 16, right: 10 })
    .onClick(() => {
      tool.onClick && tool.onClick()
    })
  }

  build() {
    Column({ space: 16 }) {
      Row({ space: 12 }) {
        Image($r('app.media.ic_mine_avatar'))
          .width(55)
          .aspectRatio(1)
          .borderRadius(55)
        Column({ space: 4 }) {
          Text(this.user.userCount)// 用户名设置到这里
            .fontSize(18)
            .fontWeight(600)
            .width('100%')
            .margin({ bottom: 5 })

          Text('编辑个人信息')
            .fontColor('#979797')
            .fontSize(11)
            .margin({ right: 4 })
        }
        .layoutWeight(1)
        .alignItems(HorizontalAlign.Start)

      }
      .width('100%')
      .height(100)
      .margin({ top: 50 })


      Column() {

        this.toolsBuilder({
          icon: $r('app.media.ic_mine_ai'),
          name: '登录账号:'
        })
        this.toolsBuilder({
          icon: $r('app.media.ic_mine_collect'),
          name: '登录时间:',
          // 登录时间设置给 value 属性
          value: `${this.user.LoginDateYear}/${this.user.LoginDateMonth}/${this.user.LoginDateDay}`
        })
        this.toolsBuilder({
          icon: $r('app.media.ic_mine_setting'), name: '登出', onClick: () => {
            // TODO:编写登出逻辑
            this.user.userCount=''
            this.user.userPwd=''
            router.back()
          }
        })
      }
      .backgroundColor(Color.White)
      .borderRadius(8)
    }
    .padding(16)
    .backgroundColor('#f3f4f5')
    .linearGradient({
      colors: [['#FFB071', 0], ['#f3f4f5', 0.3], ['#f3f4f5', 1]]
    })
    .width('100%')
    .height('100%')
  }
}