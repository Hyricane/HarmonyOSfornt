let names : string[] = ['小明','小红','小华']
names[2] = '小刚'
for (let i:number=0;i<=(names.length)-1;i++){
  console.log(names[i])
}
//返回数组长度
names.length

// 添加数组内容
// 数组前添加内容
names.unshift('姓名1','姓名2','姓名3')
//返回值为新数组的长度
let arrRes : number = names.unshift('姓名1','姓名2','姓名3')
console.log('',names,arrRes)
// 数组后添加内容
names.push('姓名1','姓名2','姓名3')
//返回值为新数组的长度
let arrRes1 : number = names.push('姓名1','姓名2','姓名3')

// 删除数组内容
// 删除数组中第一个索引
// 数组名.unshift(不传参)
console.log('',names,names.shift()!)//!防止删空数组
// 删除数组中最后一个索引
// 数组名.pop(不传参)
console.log('',names,names.pop()!)

// 任意位置增删数组内容
// 数组名.splice(操作起始下标,删除数,'增加的内容1','增加的内容2',...)
names.splice(1,2,'新增内容1','新增内容2')
// 返回新增内容组成的数组
console.log('',names.splice(1,2,'新增内容1','新增内容2'))
// 只写前两个参数来指定位置删除
names.splice(1,1)
// 删除数取值为0,在指定位置后添加新内容
names.splice(1,0,'新增内容3')
console.log('',names)
// 返回被删除内容组成的数组
console.log('',names.splice(1,2))

@Entry
@Component
struct Page_arr {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_arrHelloWorld')
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