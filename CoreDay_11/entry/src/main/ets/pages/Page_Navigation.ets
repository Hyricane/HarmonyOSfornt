@Entry
@Component
struct Page_Navigation {
  @State message: string = 'Hello World';

  build() {
    Column(){
      //该组件控制页面跳转
      // Navigation(){
        // 内容
      // }.属性
      Navigation(){
        Text('内容')
      }
      .title('标题')
      .titleMode(NavigationTitleMode.Mini)//标题模式:返回
      .backButtonIcon($r('app.media.startIcon'))//返回案件图标
    }
    .height('100%')
    .width('100%')
  }
}