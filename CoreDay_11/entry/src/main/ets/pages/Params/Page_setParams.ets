import { router } from '@kit.ArkUI';

@Entry
@Component
struct Page_setParams {
  @State message: string = 'Hello World';

  build() {
    Column(){
      Button('跳转并传递参数')
        .onClick(()=>{
          router.pushUrl({
            url:"pages/Params/Page_getParams",
            params:{
              name:'zs',
              age:18,
              desc:'学生'
            }
          })
        })
    }
    .height('100%')
    .width('100%')
  }
}