@Entry
@Component
struct Page_ConditionRendering {
  @State crCount : number = 1
// if(){}代码块中可以放组件,当条件符合时渲染组件
  build() {
    Column(){
      Button('+1')
        .onClick(()=>{
          this.crCount++
        })
      if (this.crCount == 1){
        Text('测试1')
      }else if (this.crCount == 2){
        Text('测试2')
      }else{
        Text('没有符合条件项')
      }
    }
  }
}