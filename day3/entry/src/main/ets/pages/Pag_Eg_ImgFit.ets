@Entry
@Component
struct Pag_Eg_ImgFit {
  @State message: string = 'Hello World';

  build() {
    Column(){
      Column(){
        Text('我的年度歌手榜')
          .fontColor(Color.Gray)
          .margin({
            bottom:30
          })
        Text('周杰伦')
          .fontSize(30)
          .fontWeight(FontWeight.Bold)
          .margin({
            bottom:5
          })
        Image($r('app.media.JayChou'))
          .width(100)
          .aspectRatio(1)
        Text('真爱就是循环一千遍')
          .fontColor(Color.Gray)
          .margin({
            top:30
          })
      }
    }
    .width('100%')
    .height('100%')
  }
}