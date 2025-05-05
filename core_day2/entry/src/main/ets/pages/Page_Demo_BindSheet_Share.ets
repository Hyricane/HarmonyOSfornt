@Entry
@Component
struct Page0_BindSheetDemo_Share {
  // 半模态 内部图片 Builder
  @Builder
  itemBuilder(src: ResourceStr, title: string) {
    Column() {
      Image(src)
        .width(50)
        .height(50)
      Text(title)
        .fontSize(14)
        .margin({ top: 10 })
    }
  }

  @State isShow:boolean = false

  build() {
    Column() {
      Button(`显示分享半模态`)
        .fontSize(20)
        .onClick(()=>{
          this.isShow = true
        })
        .bindSheet(
          $$this.isShow, this.newLocalBuilder
        )
      // 半模态的内容


    }
    .justifyContent(FlexAlign.Center)
    .width('100%')
    .height('100%')
  }

  @Builder
  newLocalBuilder() {
    // 半模态的内容
    Column() {
      // 顶部区域
      Stack({ alignContent: Alignment.End }) {
        Text('分享给好友')
          .width('100%')
          .textAlign(TextAlign.Center)
          .fontSize(20)
        // 自定义的关闭
      }
      .width('100%')

      // 底部的列表
      Row() {
        this.itemBuilder($r('app.media.startIcon'), '微信')
        this.itemBuilder($r('app.media.startIcon'), '朋友圈')
        this.itemBuilder($r('app.media.startIcon'), '微博')
        this.itemBuilder($r('app.media.startIcon'), '复制链接')
      }
      .width('100%')
      .margin({ top: 30 })
      .justifyContent(FlexAlign.SpaceAround)
    }
    .padding(15)
  }
}