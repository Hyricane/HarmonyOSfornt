// 字符串转数字
// Number('字符串')
// 当字符串中含有非数字时返回NaN
// 转换布尔型的结果是true = 1,false = 0
let str1 : string = '100'
let str2 : string = '1.11111'
let str3 : string = '1.111a'
let str4 : string = '1a.111a'
let num1 : number = 100
let num2 : number = 0.115
let bool:boolean = true
let bool1:boolean = false

let num_tran =  Number(str1)
console.log('转换数字',num_tran)
let num_tran1 = Number(str2)
console.log('转换数字',num_tran1)
let num_tran2 = Number(str3)
console.log('转换数字',num_tran2)
let num_tran3 = Number(bool)
console.log('转换数字',num_tran3)
let num_tran4 = Number(bool1)
console.log('转换数字',num_tran4)

// 转换取整
// parseInt('字符串'/数字)
// 转换时只保留整数,若以数字开头并包含非数字,则取第一个非数字前的所有内容
// 仅允许传入字符串
let pi_tran = parseInt(str2)
console.log('取整',pi_tran)
let pi_tran2 = parseInt(str3)
console.log('取整',pi_tran2)
let pi_tran3 = parseInt(str4)
console.log('取整',pi_tran3)

//转换取浮点型
// parseFloat()
// 仅允许传入字符串
// 若以数字开头并包含非数字,则取第一个非数字前的所有内容
let pf_tran = parseFloat(str2)
console.log('取浮点',pf_tran)
let pf_tran1 = parseFloat(str3)
console.log('取浮点',pf_tran1)
let pf_tran2 = parseFloat(str4)
console.log('取浮点',pf_tran2)

// 转字符串
// 变量名.toString()
//布尔值也可以转化
let toStr = num1.toString()
console.log('转换字符',toStr)
let toStr1 = num2.toString()
console.log('转换字符',toStr1)
let toStr3 = bool.toString()
console.log('转换字符',toStr3)
let toStr4 = bool1.toString()
console.log('转换字符',toStr4)

// 保留小数点后位数
// 变量名.toFixed(保留位数)
// 不传入参数默认取整
//转换时四舍五入
let tf = num2.toFixed()
console.log('保留小数位数',tf)
let tf1 = num2.toFixed(2)
console.log('保留小数位数',tf1)



@Entry
@Component
struct Page_Preview_TypeTrans {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_Preview_TypeTransHelloWorld')
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