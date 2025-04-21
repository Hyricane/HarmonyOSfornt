@Entry
@Component
struct Page_Eg_Flex {
  @State message: string = 'Hello World';

  build() {
    Column(){
      Text('阶段选择')
        .alignSelf(ItemAlign.Start)
        .fontWeight(FontWeight.Bold)
        .fontSize(20)
        .margin({
          bottom:40,
          left:10
        })
      Flex({
        wrap:FlexWrap.Wrap
      }){
        Text('ArkUI')
          .padding(10)
          .margin(8)
          .backgroundColor('#ccc')
        Text('ArkTS')
          .padding(10)
          .margin(8)
          .backgroundColor('#ccc')
        Text('界面开发')
          .padding(10)
          .margin(8)
          .backgroundColor('#ccc')
        Text('系统能力')
          .padding(10)
          .margin(8)
          .backgroundColor('#ccc')
        Text('权限控制')
          .padding(10)
          .margin(8)
          .backgroundColor('#ccc')
        Text('元服务')
          .padding(10)
          .margin(8)
          .backgroundColor('#ccc')
      }
    }
  }
}