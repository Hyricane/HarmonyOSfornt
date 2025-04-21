@Entry
@Component
struct Page_Task_MineDesc {
  @State message: string = 'Hello World';

  build() {
    Column(){
      Flex({
        justifyContent:FlexAlign.SpaceEvenly
      }){
        Row({space:5}){
          Text('1465')
            .fontSize(14)
            .fontWeight(FontWeight.Bold)
          Text('获赞')
            .fontSize(12)
            .fontColor('#ccc')
        }
        // 2
        Row({space:5}){
          Text('13')
            .fontSize(14)
            .fontWeight(FontWeight.Bold)
          Text('朋友')
            .fontSize(12)
            .fontColor('#ccc')
        }
        // 3
        Row({space:5}){
          Text('260')
            .fontSize(14)
            .fontWeight(FontWeight.Bold)
          Text('关注')
            .fontSize(12)
            .fontColor('#ccc')
        }
        // 4
        Row({space:5}){
          Text('110')
            .fontSize(14)
            .fontWeight(FontWeight.Bold)
          Text('粉丝')
            .fontSize(12)
            .fontColor('#ccc')
        }
      }
      .padding(10)
    }
  }
}