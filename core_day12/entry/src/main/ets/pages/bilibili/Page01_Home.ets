import router from '@ohos.router'
interface TabBarData {
  img: ResourceStr
  selectedImg: ResourceStr
  title: string
  index: number
}

// Bilibili 的主题色
export const bilibili_Pink = '#ea7a99'

export const bilibili_Gray = '#757575'

export interface User{
  name:string,
}

AppStorage.setOrCreate<User>('user',{
  name:''
})

@Entry
@Component
struct Page01_Home {
  // 选中索引 状态变量
  @State selectedIndex: number = 0
  @StorageLink('user') user:Partial<User>={}
  build() {
    Tabs({}) {
      // 首页
      TabContent() {
        Column({ space: 10 }) {
          // 顶部
          Row({ space: 10 }) {
            if (this.user.name==''){
              // 未登录头像
              Image($r('app.media.ic_home_default_avatar'))
                .width(40)
                .onClick(()=>{
                  router.pushUrl({
                    url:'pages/bilibili/Page02_Login'
                  })
                })
            }else{
              // 登录时 显示用户昵称【首字】
              Text(this.user.name?.slice(1))
                .width(40)
                .height(40)
                .backgroundColor(bilibili_Pink)
                .borderRadius(20)
                .fontColor(Color.White)
                .textAlign(TextAlign.Center)
                .fontSize(23)
            }

            TextInput()
              .layoutWeight(1)
              .border({ width: 1, color: bilibili_Gray })
              .backgroundColor(Color.Transparent)
              .height(30)
              .padding({ left: 10, top: 0, bottom: 0 })
            Image($r('app.media.ic_icon_letter'))
              .width(25)
          }
          .padding(5)

          Blank()
          Image($r('app.media.ic_home_content'))
            .width('100%')

        }

      }
      .tabBar(this.tabbarBuilder({
        img: $r('app.media.ic_tabbar_home'),
        selectedImg: $r('app.media.ic_tabbar_home_selected'),
        title: '首页',
        index: 0
      }))

      // 动态
      TabContent() {
        Column() {
          // 顶部
          Text('动态')
            .width('100%')
            .border({ width: { bottom: 1 }, color: bilibili_Gray })
            .padding(10)
            .textAlign(TextAlign.Center)
            .fontWeight(600)

          if (this.user.name==''){
            // 未登录提示 登录提示
            Column({ space: 15 }) {
              Text('你还未登录')
              Text('登录账号，查看你关注的 UP 主内容')
                .fontColor(bilibili_Gray)
                .fontSize(14)
              Button('登录')
                .type(ButtonType.Normal)
                .borderRadius(10)
                .width(230)
                .backgroundColor(bilibili_Pink)
                .onClick(() => {
                  router.pushUrl({
                    url: '/pages/Bilibili/Page02_Login'.slice(1)
                  })
                })
            }
            .margin({ top: 50 })
          }else{
            // 已登录显示内容
            Image($r('app.media.ic_follow_content'))
              .width('100%')
          }


        }

        .height('100%')
      }
      .tabBar(this.tabbarBuilder({
        img: $r('app.media.ic_tabbar_follow'),
        selectedImg: $r('app.media.ic_tabbar_follow_selected'),
        title: '动态',
        index: 1
      }))

      // 我的
      TabContent() {
        Column() {
          // 顶部
          Row() {
            Row({ space: 10 }) {
              Image($r('app.media.ic_user_default_avatar'))
                .width(60)
              if (this.user.name==''){
                // 未登录 显示 Text 并且点击去登录页
                Text('点击登录')
                  .fontSize(18)
                  .fontWeight(600)
                  .onClick(()=>{
                    router.pushUrl({
                      url:'pages/bilibili/Page02_Login'
                    })
                  })
              }else {
                // 已登录 显示用户名，并且点击无效
                Text(this.user.name)
                  .fontSize(18)
                  .fontWeight(600)
              }

            }

            Image($r('app.media.ic_public_arrow_right'))
              .width(25)
              .fillColor(bilibili_Gray)
          }
          .padding(15)
          .width('100%')
          .justifyContent(FlexAlign.SpaceBetween)

          // 内容图片
          Image($r('app.media.ic_user_content'))
            .width('100%')


          // 登录成功之后，退出登录按钮
          if (this.user.name!=''){
            Button('退出登录')
              .backgroundColor(bilibili_Pink)
              .type(ButtonType.Normal)
              .borderRadius(10)
              .width('90%')
              .margin(20)
          }


        }
        .height('100%')
      }
      .tabBar(this.tabbarBuilder({
        img: $r('app.media.ic_tabbar_user'),
        selectedImg: $r('app.media.ic_tabbar_user_selected'),
        title: '我的',
        index: 2
      }))
    }
    .barPosition(BarPosition.End)
    .scrollable(false)
    .divider({ strokeWidth: 1 })
    .onChange(index => this.selectedIndex = index)
  }

  @Builder
  tabbarBuilder(data: TabBarData) {
    Column({ space: 5 }) {
      Image(this.selectedIndex == data.index ? data.selectedImg : data.img)
        .width(30)
      Text(data.title)
        .fontSize(12)
        .fontColor(this.selectedIndex == data.index ? bilibili_Pink : bilibili_Gray)
    }
  }
}

