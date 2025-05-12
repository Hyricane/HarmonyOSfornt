// 默认导入导出
// 只能导入导出一个
// 1.准备：
// 拆分出逻辑模块，存放在定义的ArkTs文件中
// 2.导入导出：
// 2.1:给拆分出的逻辑块类前添加export default使其向外导出
// 2.2在需要引用逻辑块的页面中使用import 类名 from '路径'导入
import person from '../models/Person'

// 按需导入,一次导入多个
// import {类名1，类名2,...} for '路径'
import {deiStu,deiDor} from '../models/Person'
// 导入所有
// 通配符*表示所有，但是在语法层面并不支持，所以需要使用as重命名
// import * as 命名 form '路径'
import * as obj from '../models/Person'
// 调用导出的类时：命名.类名
obj.deiStu
obj.deiDor

let per = new person()
console.log(per.name)
console.log(per.age.toString())

let stu = new deiStu()
console.log(stu.name)

let dor = new deiDor()
console.log(dor.name)

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