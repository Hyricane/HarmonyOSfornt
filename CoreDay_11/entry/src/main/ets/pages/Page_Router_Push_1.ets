import { router } from '@kit.ArkUI';
//
@Entry
@Component
struct Page_Router_Push_1 {
  @State message: string = 'Hello World';

  build() {
    Column(){
      Button('点击跳转')
        .onClick(()=>{
          // replace替换栈内页面,back不生效
          // router.replaceUrl({url:'pages/Index'})
          // push将页面压入栈内,跳转页面中可以使用back返回
          router.pushUrl({url:'pages/Index'})
        })
    }
    .height('100%')
    .width('100%')
  }
}