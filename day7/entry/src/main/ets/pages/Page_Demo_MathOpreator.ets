@Entry
@Component
struct Page_Demo_MathOpreator {
  @State like : number = 8888;
  @State fillcolor : string = '#7e7e7e'
  @State fontcolor : string = '#7e7e7e'

  build() {
    Column(){
      Column({ space: 8}) {
        // 图片
        Image($r('app.media.Demo_Opreator'))
          .width('100%')
          .borderRadius({topLeft: 6, topRight: 6})
        // 标题文字
        Text('考眼力又来了你能看到几只鸭子？')
          .lineHeight(18)
          .fontSize(14)
          .padding({left: 5, right: 5})
        // 来源 + 点赞
        Row() {
          // 来源
          Text() {
            ImageSpan($r('app.media.startIcon'))
              .width(16)
              .margin({ right: 3})
            Span('视野联行眼镜')
              .fontSize(12)
              .fontColor('#7e7e7e')
          }
          // 点赞
          Row({ space: 3}) {
            Image($r('sys.media.ohos_ic_public_share'))
              .width(14)
              .fillColor(this.fillcolor)
            Text(this.like.toString())
              .fontSize(12)
              .fontColor(this.fontcolor)
          }
          .onClick(()=>{
            this.like += 1
            this.fillcolor = '#BB4B5C'
            this.fontcolor = '#BB4B5C'
          })
        }
        .width('100%')
        .justifyContent(FlexAlign.SpaceBetween)
      }
      .width('50%')
    }
    .padding(20)
  }
}