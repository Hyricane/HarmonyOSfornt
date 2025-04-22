@Entry
@Component
struct Page_Stack {
  @State message: string = 'Hello World';

  build() {
   Column(){
     // 层叠布局
     // 子元素从下到上堆叠放置
     Stack(){
       Text('测试盒子')
         .width(300)
         .height(200)
         .backgroundColor(Color.Pink)
         // 层级控制
         // 层级数越大堆叠越靠上
         .zIndex(0)
       Text('测试盒子')
         .width(200)
         .height(100)
         .backgroundColor(Color.Yellow)
       Text('测试盒子')
         .width(100)
         .height(50)
         .backgroundColor(Color.Orange)
     }
     // 对齐方式
     // .alignContent((Alignment.枚举))
     .alignContent(Alignment.Center)
   }
   .width('100%')
    .height('100%')
  }
}