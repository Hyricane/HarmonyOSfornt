@Entry
@Component
struct Page_Life_2 {
  //页面专用钩子
  //页面显示
  onPageShow(): void {
    AlertDialog.show({message:'页面生成,钩子激活'})
  }
  //页面隐藏
  onPageHide(): void {
    AlertDialog.show({message:'页面隐藏,钩子激活'})
  }
  //点击返回按钮,可设置boolean返回值
  onBackPress(): boolean | void {
    AlertDialog.show({message:'点击返回按钮,钩子激活'})
    //返回值为真时,禁止返回
    return true
  }
  build() {
    Column(){
      Text('页面2')
    }
    .height('100%')
    .width('100%')
  }
}