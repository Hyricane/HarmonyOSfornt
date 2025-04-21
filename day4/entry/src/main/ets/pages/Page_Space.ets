@Entry
@Component
struct Page_Space {
  @State message: string = 'Hello World';

  build() {
    Column(){
      // space设置布局主方向上元素间距等距
      // 容器({space:数值})
      Column({space:20}){
        Text('测试文本')
        Text('测试文本')
        Text('测试文本')
      }

      Row({space:20}){
        Text('测试文本')
        Text('测试文本')
        Text('测试文本')
      }
    }
  }
}