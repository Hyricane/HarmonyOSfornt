let rowStr:string = '111111'
let rowStr1:string='11a.1'
let rowStr2 :string='1.1111'
let rowStr3: string = 'a11.1'
let rowNum:number = 11
let rowNum1:number = 1.911

// 转数字
let numTrans = Number(rowStr)
console.log('',numTrans)
let numTrans1 = Number(rowStr1)
console.log('',numTrans1)
let numTrans2 = Number(rowStr2)
console.log('',numTrans2)

// 取整
let piTran = parseInt(rowStr)
console.log('',piTran)
let piTran1 = parseInt(rowStr1)
console.log('',piTran1)
let piTran2 = parseInt(rowStr2)
console.log('',piTran2)
let piTran3 = parseInt(rowStr3)
console.log('',piTran3)

//转浮点
let pfTran = parseFloat(rowStr)
console.log('',pfTran)
let pfTran1 = parseFloat(rowStr1)
console.log('',pfTran)
let pfTran2 = parseFloat(rowStr2)
console.log('',pfTran)

// 转字符串
console.log('',rowNum.toString())
console.log('',rowNum1.toString())

// 保留小数
// 传入数字型参数决定保留几位小数
console.log('',rowNum.toFixed(2))
// 不传入参数默认取整,遵循四舍五入
console.log('',rowNum1.toFixed())

@Entry
@Component
struct Page_TypeTrans {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_TypeTransHelloWorld')
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