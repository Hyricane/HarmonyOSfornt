let score : number  = 600
// 单分支

// if(判断条件){执行语句}
if (score>100){
  console.log('恭喜你考入黑马大学')
}

// 小括号中若不是布尔型,会自动转化为布尔型,传入假值时不执行
if (0){
  console.log('恭喜你考入黑马大学')
}

// 只有一条执行语句时可以省略花括号{}
if (score>100) console.log('恭喜你考入黑马大学')

// 双分支
// if (判断条件){为真时执行}else {为假时执行}
if (score<100){
  console.log('补考')
}else {
  console.log('恭喜你考入黑马大学')
}

// 多分支
// if (条件1){
//   执行语句
// }else if (条件2){
//   执行语句
// }else if (条件3){
//   执行语句
// }else {
//   以上条件均不符合时执行
// }

if (score>=550){
  console.log('优秀')
}else if (score>=400){
  console.log('一般')
}else if (score>=300){
  console.log('及格')
}else {
  console.log('不及格')
}


@Entry
@Component
struct Page_If {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_IfHelloWorld')
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