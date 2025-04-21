@Entry
@Component
struct Page_Task_VideoCourse {
  @State message: string = 'Hello World';

  build() {
    Column(){
      // 主体
      Column({space:15}){
        // 标题
        Text('课程视频（0基础学习，任选一套即可）')
          .fontWeight(FontWeight.Bold)
          .fontSize(18)
        // 盒子1
        Row({space:10}){
          Image($r('app.media.img01'))
            .width(50)
            .aspectRatio(1)
          Text('1.黑马程序员20天鸿蒙基础从入门到精通视频教程')
            .lineHeight(25)
            .layoutWeight(1)
            .fontColor('#fff')
        }
        .backgroundImage($r('app.media.bg01'))
        .backgroundImageSize(ImageSize.Cover)
        .borderRadius(10)
        .width('100%')
        .padding(15)
        // 盒子2
        Row({space:10}){
          Image($r('app.media.img02'))
            .width(50)
            .aspectRatio(1)
          Text('2.鸿蒙入门到起飞，含多所大学练习题+力扣算法题+大厂鸿蒙面试题')
            .lineHeight(25)
            .layoutWeight(1)
            .fontColor('#fff')
        }
        .backgroundImage($r('app.media.bg02'))
        .backgroundImageSize(ImageSize.Cover)
        .borderRadius(10)
        .width('100%')
        .padding(15)
        // 盒子3
        Row({space:10}){
          Image($r('app.media.img01'))
            .width(50)
            .aspectRatio(1)
          Text('3.2024新版鸿蒙零基础快速入门')
            .lineHeight(25)
            .layoutWeight(1)
            .fontColor('#fff')
        }
        .backgroundImage($r('app.media.bg01'))
        .backgroundImageSize(ImageSize.Cover)
        .borderRadius(10)
        .width('100%')
        .padding(15)
      }
      .width('100%')
      .padding(20)
    }
    .width('100%')
    .height('100%')
  }
}