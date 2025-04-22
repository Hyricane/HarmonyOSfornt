@Entry
@Component
struct Page_Demo_Stack {
  @State message: string = 'Hello World';

  build() {
    // 主体
    Column(){
      // 预览图
      Stack(){
        Image($r('app.media.Demo_Bilibili'))
          .width('100%')
          .borderRadius({
            topLeft:10,
            topRight:10
          })
          Row(){
            Row({space:20}){
              Row({space:5}){
                Image($r('sys.media.ohos_ic_public_play'))
                  .width(30)
                  .aspectRatio(1)
                  .fillColor('#fff')
                Text('282万')
                  .fontWeight(FontWeight.Bold)
                  .fontColor('#fff')
              }
              Row({space:5}){
                Image($r('sys.media.ohos_ic_public_email'))
                  .width(30)
                  .aspectRatio(1)
                  .fillColor('#fff')
                Text('8655')
                  .fontWeight(FontWeight.Bold)
                  .fontColor('#fff')
              }
            }
            Text('4:33')
              .fontWeight(FontWeight.Bold)
              .fontColor('#fff')
          }
          .padding({
            left:10,
            right:10,
            bottom:13
          })
          .width('100%')
          .justifyContent(FlexAlign.SpaceBetween)
      }
      .alignContent(Alignment.Bottom)
      .margin({
        bottom:10
      })
      // 标题
      Text('【凤凰传奇新歌】欢迎来到国风统治区：唢呐一响神曲《铁衣流派推广曲》')
        .maxLines(2)
        .textOverflow({
          overflow:TextOverflow.Ellipsis
        })
        .fontSize(23)
        .padding({left:10,right:10})
        .margin({bottom:20})
      // 更多
      Row(){
        Text('19万点赞')
          .fontColor('#B27F6C')
          .padding(5)
          .backgroundColor('#FEF1F1')
        // 空白占位组件
        Blank()
          .layoutWeight(1)
        Image($r('sys.media.ohos_ic_public_more'))
          .height(30)
          .aspectRatio(1)
          .fillColor("#ccc")
      }
      .width('100%')
      .padding(10)
    }
    .width('100%')
    .height('100%')
  }
}