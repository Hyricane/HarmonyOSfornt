//使用Promise处理异步代码
new Promise<number>(
  // resolve:异步成功后返回数据,reject失败后返回数据
  (resolve,reject)=>{
    // 定时器模拟请求数据
    setTimeout(()=>{
      console.log('一秒到了')
      let randomNum=Math.random()
      randomNum > 0.5 ? resolve(1):reject('失败')
    },1000)
}).then(
  // 处理成功后数据
  (res)=>{
    console.log(res.toString())
  },
  // 处理失败后数据
  (err:string)=>{
    console.log('失败',err)
  }
)

@Entry
@Component
struct Page_Promise {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_PromiseHelloWorld')
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