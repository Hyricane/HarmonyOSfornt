let norMsg:string = '常规变量'

@Entry
@Component
struct Page_StateManage {
  // @State定义状态变量
  // 必须赋初值
  // 只能写在struct组件下
  @State staMsg:string='状态变量'

  build() {
   Column(){
     Text(norMsg)
     // 通过this关键字引入状态变量
     // this指当前容器内
     Text(this.staMsg)
   }
  }
}