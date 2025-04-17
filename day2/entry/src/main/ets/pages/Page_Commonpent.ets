@Entry
@Component
struct Page_Commonpent {
  @State message: string = 'Hello World';

  build() {
    Row(){
      Text('第一行文本')
      Column(){
        Text('第一列文本')
        Text('第二列文本')
      }
    }
  }
}