@Entry
@Component
struct Page_Date {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_DateHelloWorld')
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

let date:Date = new Date
console.log('',date)//获取标准时间
console.log('',date.getFullYear())//获取年份
console.log('',date.getMonth()+1)//获取月份 0-11
console.log('',date.getDate())//获取几号
console.log('',date.getDay())//获取周几
console.log('',date.getHours())//获取几点 24小时制
console.log('',date.getMinutes())//获取分钟
console.log('',date.getSeconds())//获取秒
// iso标准写法
// 年月日间-分隔,T分隔时间和月份
let date1:Date = new Date('2017-5-12T16:57:51')
//时间戳
// Date的静态方法
// 获取2017-5-12T16:57:51距今过去多少毫秒,即当前时间的时间戳
console.log('',Date.now())
