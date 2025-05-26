import { http } from '@kit.NetworkKit';
const req = http.createHttp()
@Entry
@Component
struct Page_Post {
  @State message: string = '提交数据';
  build() {
    Column() {
      Text(this.message)
        .id('Page_PostHelloWorld')
        .fontSize($r('app.float.page_text_font_size'))
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
        .onClick(() => {
          //向服务器提交数据
          //请求名.request('服务器地址,{method:http.RequestMethod.POST,extraData:'key=value&key2=value...'})
          req.request(
            'http://hmajax.itheima.net/api/register',
            {
             method:http.RequestMethod.POST,
              //提交数据的字符串写法
              // extraData:'username=wangwu111&password=12345678',
              //提交数据的对象写法
              extraData:{
               username:'zhangsan111111',
                password:'12345678'
              },
              //以对象提交,需要更改报文头部的内容类型,改为'application/json'
              header:{
               ContentType:'application/json'
              }
            })
            .then((obj)=>{
              AlertDialog.show({message:obj.result.toString()})
            })
        })
    }
    .height('100%')
    .width('100%')
  }
}