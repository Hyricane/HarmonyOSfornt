import { http } from '@kit.NetworkKit';

@Entry
@Component
struct Page_request {
  @State message: string = '';

  build() {
    Column(){
      Text(this.message)
      Button('获取数据')
        .onClick(()=>{
          // 1.创建http请求
          let obj = http.createHttp()
          // 2.request方法请求服务器
          obj.request('https://api-vue-base.itheima.net/api/joke')
            .then((result)=>{
              // 获取请求回来的数据
              // AlertDialog.show({message:JSON.stringify((result))})
              this.message = result.result as string
            })
        })
    }
    .height('100%')
    .width('100%')
  }
}