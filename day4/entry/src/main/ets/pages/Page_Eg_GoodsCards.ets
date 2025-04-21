@Entry
@Component
struct Page_Eg_GoodsCards {
  @State message: string = 'Hello World';

  build() {
    Column(){
      Flex({
        wrap:FlexWrap.Wrap,
        justifyContent:FlexAlign.SpaceEvenly,
      }) {
        Column({ space: 15 }) {
          Image($r('app.media.Eg_Goods'))
            .width('100%')
            .aspectRatio(1)
            .borderRadius({
              topLeft: 10,
              topRight: 10
            })
          Column({ space: 15 }) {
            Text('[程序员必备]最高版本放心品质')
              .fontSize(13)
              .maxLines(1)
              .textOverflow({ overflow: TextOverflow.Ellipsis })
            Row({ space: 5 }) {
              Text('￥666')
                .fontColor('#CE3F61')
              Text('销量666')
                .fontSize(10)
                .fontColor('#ccc')
                .alignSelf(ItemAlign.Baseline)
            }
          }
          .padding({
            left: 10,
            right: 10
          })
          .width('100%')
          .alignItems(HorizontalAlign.Start)
        }
        .margin({bottom:10})
        .padding(5)
        .width('47%')
        .backgroundColor('#fff')

        Column({ space: 15 }) {
          Image($r('app.media.Eg_Goods'))
            .width('100%')
            .aspectRatio(1)
            .borderRadius({
              topLeft: 10,
              topRight: 10
            })
          Column({ space: 15 }) {
            Text('[程序员必备]最高版本放心品质')
              .fontSize(13)
              .maxLines(1)
              .textOverflow({ overflow: TextOverflow.Ellipsis })
            Row({ space: 5 }) {
              Text('￥666')
                .fontColor('#CE3F61')
              Text('销量666')
                .fontSize(10)
                .fontColor('#ccc')
                .alignSelf(ItemAlign.Baseline)
            }
          }
          .padding({
            left: 10,
            right: 10
          })
          .width('100%')
          .alignItems(HorizontalAlign.Start)
        }
        .margin({bottom:10})
        .padding(5)
        .width('47%')
        .backgroundColor('#fff')

        Column({ space: 15 }) {
          Image($r('app.media.Eg_Goods'))
            .width('100%')
            .aspectRatio(1)
            .borderRadius({
              topLeft: 10,
              topRight: 10
            })
          Column({ space: 15 }) {
            Text('[程序员必备]最高版本放心品质')
              .fontSize(13)
              .maxLines(1)
              .textOverflow({ overflow: TextOverflow.Ellipsis })
            Row({ space: 5 }) {
              Text('￥666')
                .fontColor('#CE3F61')
              Text('销量666')
                .fontSize(10)
                .fontColor('#ccc')
                .alignSelf(ItemAlign.Baseline)
            }
          }
          .padding({
            left: 10,
            right: 10
          })
          .width('100%')
          .alignItems(HorizontalAlign.Start)
        }
        .margin({bottom:10})
        .padding(5)
        .width('47%')
        .backgroundColor('#fff')

        Column({ space: 15 }) {
          Image($r('app.media.Eg_Goods'))
            .width('100%')
            .aspectRatio(1)
            .borderRadius({
              topLeft: 10,
              topRight: 10
            })
          Column({ space: 15 }) {
            Text('[程序员必备]最高版本放心品质')
              .fontSize(13)
              .maxLines(1)
              .textOverflow({ overflow: TextOverflow.Ellipsis })
            Row({ space: 5 }) {
              Text('￥666')
                .fontColor('#CE3F61')
              Text('销量666')
                .fontSize(10)
                .fontColor('#ccc')
                .alignSelf(ItemAlign.Baseline)
            }
          }
          .padding({
            left: 10,
            right: 10
          })
          .width('100%')
          .alignItems(HorizontalAlign.Start)
        }
        .margin({bottom:10})
        .padding(5)
        .width('47%')
        .backgroundColor('#fff')

        Column({ space: 15 }) {
          Image($r('app.media.Eg_Goods'))
            .width('100%')
            .aspectRatio(1)
            .borderRadius({
              topLeft: 10,
              topRight: 10
            })
          Column({ space: 15 }) {
            Text('[程序员必备]最高版本放心品质')
              .fontSize(13)
              .maxLines(1)
              .textOverflow({ overflow: TextOverflow.Ellipsis })
            Row({ space: 5 }) {
              Text('￥666')
                .fontColor('#CE3F61')
              Text('销量666')
                .fontSize(10)
                .fontColor('#ccc')
                .alignSelf(ItemAlign.Baseline)
            }
          }
          .padding({
            left: 10,
            right: 10
          })
          .width('100%')
          .alignItems(HorizontalAlign.Start)
        }
        .margin({bottom:10})
        .padding(5)
        .width('47%')
        .backgroundColor('#fff')

        Column({ space: 15 }) {
          Image($r('app.media.Eg_Goods'))
            .width('100%')
            .aspectRatio(1)
            .borderRadius({
              topLeft: 10,
              topRight: 10
            })
          Column({ space: 15 }) {
            Text('[程序员必备]最高版本放心品质')
              .fontSize(13)
              .maxLines(1)
              .textOverflow({ overflow: TextOverflow.Ellipsis })
            Row({ space: 5 }) {
              Text('￥666')
                .fontColor('#CE3F61')
              Text('销量666')
                .fontSize(10)
                .fontColor('#ccc')
                .alignSelf(ItemAlign.Baseline)
            }
          }
          .padding({
            left: 10,
            right: 10
          })
          .width('100%')
          .alignItems(HorizontalAlign.Start)
        }
        .margin({bottom:10})
        .padding(5)
        .width('47%')
        .backgroundColor('#fff')
      }
    }
    .backgroundColor('#ccc')
  }
}