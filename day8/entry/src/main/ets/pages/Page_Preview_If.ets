let ifNum : number = 1
let ifNum1 : number = 2

// 单分支
// if(条件){代码块}
// 条件成立时执行代码块
if (ifNum1>ifNum){
  console.log(`${ifNum1}大于${ifNum},条件语句执行`)
}

// 双分支
// if(条件){代码块}else{代码块}
// 条件成立执行if后的代码块,反之执行else后的代码块
if (ifNum>ifNum1){
  console.log('条件不成立,代码块不执行')
}else {
  console.log('代码块执行')
}

@Entry
@Component
struct Page_Preview_If {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_Preview_IfHelloWorld')
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