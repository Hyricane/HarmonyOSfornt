// 自定义组件
@Component
struct MyComponent {
  @State message: string = '我的自定义组件';
  build() {
    Text(this.message)
  }
}

@Entry
@Component
struct Page_Component {

  build() {
   Column(){
     MyComponent()
   }
    .height('100%')
    .width('100%')
  }
}