// 默认导入导出
// 1.准备：
// 拆分出逻辑模块，存放在定义的ArkTs文件中
// 2.导入导出：
// 2.1:给拆分出的逻辑块类前添加export default使其向外导出
// 2.2在需要引用逻辑块的页面中使用import 类名 from '路径'导入

import person from '../models/Person'

let stu = new person()
console.log(stu.name)
console.log(stu.age.toString())

@Entry
@Component
struct Page_default_export_import {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_default_export_importHelloWorld')
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