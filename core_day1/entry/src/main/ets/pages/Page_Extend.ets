// 抽取某一类组件公共属性和私有属性,但是必须传入组件名
// @Extend(组件名) function 函数名(){样式}
// 必须写在struct组件外
// 函数可以传参
@Extend(Text)
function textStyle(color:Color,msg:string){
  .textAlign(TextAlign.Center)
  .backgroundColor(color)
  .fontColor(Color.White)
  .fontSize(30)
  .onClick(() => {
    AlertDialog.show({
      message: msg
    })
  })
}
@Entry
@Component
struct Page_Extend {

  build() {
    Column(){
      Swiper() {
        Text('0')
          .textStyle(Color.Red,'轮播图1')
        Text('1')
          .textStyle(Color.Blue,'轮播图2')
        Text('2')
          .textStyle(Color.Brown,'轮播图3')
      }
      .width('100%')
      .height(200)
    }
    .height('100%')
    .width('100%')
  }
}