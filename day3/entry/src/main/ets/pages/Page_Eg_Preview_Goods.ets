import { Type } from '@kit.ArkUI';

@Entry
@Component
struct Page_Eg_Preview_Goods {
  build() {
    Column(){
      Column(){
        Image($r('app.media.goods'))
          .width('100%')
          .height(150)
          .borderRadius({
            topLeft:20,
            topRight:20
          })
        Text('磁力片。工厂直发磁力王。100片，尺寸7.5cm 可兼容其他品牌')
          .maxLines(2)
          .textOverflow({
            overflow:TextOverflow.Ellipsis
          })
        Text('￥87')
          .fontColor('#B4201D')
          .width('100%')
          .margin({
            left:20,
            top:10,
            bottom:10
          })

      }
      .backgroundColor("#ffffff")
      .width('50%')
      .height(220)
      .borderRadius(10)
    }
    .width('100%')
    .backgroundColor('#EFEFEF')
    .padding(10)
  }
}