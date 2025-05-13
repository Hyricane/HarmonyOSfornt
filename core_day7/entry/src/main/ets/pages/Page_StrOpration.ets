// 字符串补位
// 字符串.padStart(补几位,用什么补)
let psMsg:string = '测试'
console.log(psMsg)
console.log(psMsg.padStart(10,'*'))

//字符串分割为数组
// 字符串.split('根据什么分割')
let sStr :string= '1-2-3-4-5-6'
console.log('',sStr.split('-'))

//字符串去空格
let soStr:string = '   测试  文 本   '
console.log('去除前:',soStr)
let soStr_1:string = soStr.trim()
console.log('去除后:',soStr_1)

// 字母变换大小写
// 字符串.toUpperCase()/tolowerCase()
let soStr1:string = 'abGcD'
let soStr1_1:string = soStr1.toUpperCase()
let soStr1_2:string = soStr1.toLowerCase()
console.log(soStr1_1)
console.log(soStr1_2)

// 检测字符串中是否包含给定字符串
// 字符串.includes('字符串'):boolean
let soStr2:string = '1234@163.com'
console.log('是否包含@',soStr2.includes('@'))

@Entry
@Component
struct Page_StrOpration {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_StrOprationHelloWorld')
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