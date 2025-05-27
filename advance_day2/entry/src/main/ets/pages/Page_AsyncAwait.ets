import { getNewPromise } from './Page_ChainToCallbackHell';


//简化链式写法的语法糖
// async function 函数名(){
//   await 异步代码1
//   await 异步代码2
//     ...
// }
// 被await修饰后后续代码将等待该代码执行完毕
async function awaitFn(){
  let aaRes_1 = await getNewPromise(3000,1)
  console.log('',aaRes_1)

  let aaRes_2 = await getNewPromise(3000,2)
  console.log('',aaRes_2)

  let aaRes_3 = await getNewPromise(3000,3)
  console.log('',aaRes_3)
}
awaitFn()

@Entry
@Component
struct Page_AsyncAwait {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_AsyncAwaitHelloWorld')
        .fontSize($r('app.float.page_text_font_size'))
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
        .onClick(() => {
          this.message = 'Welcome';
        })
    }
    .height('100%')
    .width('100%')
  }
}