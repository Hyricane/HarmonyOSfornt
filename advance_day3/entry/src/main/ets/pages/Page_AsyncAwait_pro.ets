@Entry
@Component
struct Page_AsyncAwait_pro {
  @State message: string = 'Hello World';
  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_AsyncAwait_proHelloWorld')
        .fontSize($r('app.float.page_text_font_size'))
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
        // try(){}carch(err){}处理被async修饰的失败情况
        .onClick(async () => {
          try {
            const res = await new Promise<number>((resolve,reject)=>{
              setTimeout(()=>{
                let res = Math.random()
                res > 0.5 ? resolve(1):reject(-1)
              },1000)
            })
            console.log(res.toString())
          }catch (err){console.log('-1')}
        })
    }
    .height('100%')
    .width('100%')
  }
}