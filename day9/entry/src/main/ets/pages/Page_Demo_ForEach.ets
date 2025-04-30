interface stu{
  name:string,
  age:number
}


@Entry
@Component
struct Page_Demo_ForEach {
  @State stuArr:stu[] = [
  {name:'张三',age:18},
  {name:'李四',age:19},
  {name:'王五',age:20}
]

  build() {
    Column(){
      ForEach(this.stuArr,(item:stu,index:number)=>{
        Row() {
          Text(`姓名：${item.name}，年龄：${item.age}`)
            .fontSize(18)
            .fontColor('#fff')
          Button('年龄+1')
            .onClick(()=>{
              // 使用等号重新给该对象属性赋值
              this.stuArr[index]={
                name:item.name,
                age:item.age+1
              }
            })
            .backgroundColor('#e64133')
        }
        .width('100%')
        .height(60)
        .backgroundColor(Color.Orange)
        .borderRadius(5)
        .padding({left: 10, right: 10})
        .margin({bottom: 10})
        .justifyContent(FlexAlign.SpaceBetween)
      })
    }
    .padding(20)
    .width('100%')
    .height('100%')
  }
}