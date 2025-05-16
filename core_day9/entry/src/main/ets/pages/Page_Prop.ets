@Component
struct TestProp {
  //@Prop
  // 对子组件使用,使父组件数据单向流动到子组件
  @Prop pCount:number=0
  build() {
    Text('子组件'+this.pCount)
  }
}


@Entry
@Component
struct Page_Prop {
  @State count:number = 0

  build() {
   Column(){
     Text('父组件'+this.count)
       .onClick(()=>{
         this.count++
       })
     // 父组件数据赋值给子组件
     TestProp({pCount:this.count})
   }
    .height('100%')
    .width('100%')
  }
}