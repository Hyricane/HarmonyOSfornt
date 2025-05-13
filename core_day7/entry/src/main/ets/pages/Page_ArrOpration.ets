//查找对应元素下标
// 数组.indexOf(数组元素):number
let numArr:number[] = [1,2,3,4,5]
let strArr:string[] = ['1','2','3','4','5']
console.log('3的索引是',numArr.indexOf(3))
console.log('字符串4的索引是',strArr.indexOf('4'))

//查找数组中是否存在某元素
// 数组.includes(元素):boolean
console.log('6是否存在于numArr',numArr.includes(6))

//数组拼接为字符串
// 数组.join('分隔符'):string
console.log(numArr.join())//不传参，以,分隔
console.log(numArr.join(''))//空字符串，无分隔
console.log(numArr.join('-'))

//遍历数组循环执行代码
// 数组.forEach((元素,索引)=>{代码})
numArr.forEach((item,index)=>{
  console.log('数组内容和索引为:',item,index)
})

//根据原数组映射新数组
// 数组.map<新数组的类型>((元素,索引)=>{代码 return 返回值})
// 必须有返回值
let numArr_map = numArr.map<number>((item,index)=>{
  return item*3
})
console.log('映射后的数组:',numArr_map)

//过滤符合要求的数组元素
// 数组.filter((元素,索引)=>{代码 return}):[]
//返回过滤后的新数组
let numArr_filter = numArr.filter((item,index)=>{
  return item>3
})
console.log(JSON.stringify(numArr_filter))

//数组排序
// 数组.sort((a,b)=>{return 正/负})
// 更改原数组
numArr.sort((a,b)=>{
  // if (a<b) {
  //   // 为真时使其返回正值,两数交换位置
  //   return 1
  // }else{
  //   为假时返回负值,两数位置不变
  //   return -1
  // }

  // 由此,可简写为
  return b-a
})
console.log(JSON.stringify(numArr))

// 数组累加
// 数组.reduce((累加器,元素)=>{return 累加器+元素},累加器起始值)
// 返回累加结果
let arrReRes = numArr.reduce((sum,item)=>{
  return sum+item
},0)
console.log(arrReRes.toString())

@Entry
@Component
struct Page_ArrOpration {
  @State message: string = '数组常用方法';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_ArrOprationHelloWorld')
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