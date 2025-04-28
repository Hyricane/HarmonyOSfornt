let vip :number = 2
if (vip>=6){
  console.log('4k观影')
}else if (vip>=4){
  console.log('1080p观影')
}else if (vip>=2){
  console.log('720p观影')
}else {
  console.log('请看广告')
}

@Entry
@Component
struct Page_Task_VIP {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_Task_VIPHelloWorld')
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