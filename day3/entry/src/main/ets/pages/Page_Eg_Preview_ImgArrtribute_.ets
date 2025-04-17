@Entry
@Component
struct Page_Eg_Preview_ImgArrtribute_ {
  @State message: string = 'Hello World';

  build() {
    Column(){
      Text('我的年度歌手榜')
        .fontColor(Color.Grey)
        .textAlign(TextAlign.Center)
      Text('周杰伦')
        .fontWeight(FontWeight.Bold)
        .fontSize(30)
        .lineHeight(50)
      Row(){
        Image($r('app.media.JayChou'))
          .aspectRatio(1)
          .objectFit(ImageFit.Cover)
      }
      .width(100)
      Text('真爱就是循环一千遍')
        .fontColor(Color.Grey)
        .lineHeight(36)
    }
    .width('100%')
  }
}