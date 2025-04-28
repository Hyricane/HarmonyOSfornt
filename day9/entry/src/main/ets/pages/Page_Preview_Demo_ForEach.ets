interface Student{
  name:string,
  age:number,
}
@Entry
@Component
struct Page_Preview_Demo_ForEach {
  @State
  stuArr : Student[] = [
  {name:'小红',age:18},
  {name:'小明',age:19},
  {name:'大强',age:18}
]
  // @State ageTem : number = 0
  build() {
    Column(){
      Column({space:10}){
        ForEach(this.stuArr,(stu:Student,index:number)=>{
          Row(){
            Text(`姓名:${this.stuArr[index].name} , 年龄:${this.stuArr[index].age}`)
              .fontColor('#fff')
            Button('年龄+1')
              .height(30)
              .fontColor('#fff')
              .backgroundColor('#E74132')
              .onClick(()=>{

              })
          }
          .justifyContent(FlexAlign.SpaceBetween)
          .height(60)
          .width('100%')
          .padding({left:10,right:10})
          .backgroundColor('#FFA600')
        })
      }
    }
    .width('100%')
    .height('100%')
  }
}