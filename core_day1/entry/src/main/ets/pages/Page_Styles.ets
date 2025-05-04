//抽取全局通用的事件属性和样式
// 设置全局必须写在最上方
// @Styles function 函数名(){}
@Styles function Glostyles(){
  .width(100)
  .height(100)
  .backgroundColor(Color.Pink)
}
@Entry
@Component
struct Page_Styles {
  @State message: string = 'Hello World';
  // 涉及到组件内的状态变量,就需要把函数写在struct组件内
  // @Styles 函数名(){}
  // 函数不支持传参
  @Styles priStyles(){
    .onClick(()=>{
      this.message = 'ArkTs'
    })
  }
  build() {
    Column({space:10}){
      Text(this.message)
        .Glostyles()
        .priStyles()
      Button(this.message)
        .Glostyles()
    }
    .height('100%')
    .width('100%')
  }
}