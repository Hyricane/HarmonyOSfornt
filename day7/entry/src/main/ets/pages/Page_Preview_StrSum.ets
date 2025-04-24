// 字符串拼接
let name :string = '小明'
let age :string = '18'
// 使用+拼接两变量内容,其中布尔值不能和数字拼接
console.log(name+age)
let flage:boolean = true
let age2:number = 18
console.log(name+age2)

// 模板字符串
// `{$变量}`
// 比字符串拼接更加灵活,可是使变量内容和文本一同输出
console.log(`姓名${name}年龄${age2}`)


@Entry
@Component
struct Page_Preview_StrSum {
  @State message: string = 'Hello World';

  build() {
   Column(){
     Text(`姓名${name}年龄${age2}`)
    }
    .height('100%')
    .width('100%')
  }
}