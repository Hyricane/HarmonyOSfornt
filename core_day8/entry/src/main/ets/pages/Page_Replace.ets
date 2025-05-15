const str = '欢迎大家学习ArkTS，相信大家一定能学好ArkTS!!!'
// replace 返回值是替换完毕的字符串
// str.replace(正则规则,'替换内容')
// i 匹配字母不区分大小写
//g 匹配所有满足正则的结果
console.log(str.replace(/arkts/, '鸿蒙开发')) //
console.log(str.replace(/arkts/i, '鸿蒙开发')) //
console.log(str.replace(/arkts/gi, '鸿蒙开发')) //
console.log(str.replace(/arkts/ig, '鸿蒙开发')) //


@Entry
@Component
struct Page_Replace {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_ReplaceHelloWorld')
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