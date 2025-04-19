@Entry
@Component
struct Page_Eg_BaiduNovel {
  @State message: string = 'Hello World';

  build() {
    Column(){
      Column(){
        Image($r('app.media.baiduNovel'))
          .width(100)
        Text('帝师县令')
          .fontWeight(FontWeight.Bold)
          .fontSize(25)
          .lineHeight(45)
        Text('202万字')
          .fontSize(12)
          .fontColor(Color.Gray)
          .lineHeight(22)
        Text('兵荒马乱的世道，赵康一朝穿越成乾国九品县令。胸无大志的他并不想争霸天下，只想当个混吃等死，为非作歹的土皇帝。于是，在元江县出现了许多奇奇怪怪的东西，老八洗浴城、二狗麻将馆、张三养生店..直到有一天女帝微服私访元江')
          .fontColor(Color.Gray)
          .textIndent(32)
          .maxLines(5)
          .textOverflow({
            overflow:TextOverflow.Ellipsis
          })
          .lineHeight(26)
      }
    }
    // Column(){}容器的特点:
    //   1.容器内元素垂直排列
    //   2.容器内元素自动水平居中
    .width('100%')
    .height('100%')
  }

}