// for(...of...)遍历数组
// for (let 变量名 of 数组名){}
let names:string[]=['姓名0','姓名1','姓名2','姓名3','姓名4']
for (let name  of names){
  console.log(name)
}

@Entry
@Component
struct Page_ForOF {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_ForOFHelloWorld')
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