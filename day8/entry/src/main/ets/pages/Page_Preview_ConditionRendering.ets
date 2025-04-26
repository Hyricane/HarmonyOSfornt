@Entry
@Component
struct Page_Preview_ConditionRendering {
  @State con : number = 1
  // 条件渲染
  // 使用if根据条件设置组件何时生效
  build() {
    Column(){
      if (this.con ==1){
        Text('1')
      }else if (this.con==2){
        Text('2')
      }else{
        Text('any')
      }
    }
    .onClick(()=>{
      this.con++
    })
  }
}