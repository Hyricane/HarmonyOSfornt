let msg :string = '测试'
@Entry
@Component
struct Page_Preview_StateManage {
  // 状态变量
  //当组件状态变化时激活
  // 使用@State设置状态变量
  //必须赋初值
  //必须写在struct下,build上
  @State msg1 : string = '状态更新'
  build() {
    Column(){
      Text(msg)
      // 使用this.状态变量名获取状态变量值
      Text(this.msg1)
    }
  }
}