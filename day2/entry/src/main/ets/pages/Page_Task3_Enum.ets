enum tableSize{
  Big="300cm* 350cm",
  Middle="200cm*249cm",
  Small="100cm*150cm"
}
let table:tableSize = tableSize.Big
console.log(table)

@Entry
@Component
struct Page_Task3_Enum {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_Task3_EnumHelloWorld')
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