@Entry
@Component
struct Page_Preview_Border {
  @State message: string = 'Hello World';

  build() {
    Column(){
      Row(){
        // 容器1
      }
      .width(100)
      .height(100)
      .backgroundColor(Color.Orange)
      // 同时为4个边框设置相同属性
      .border({
        width:2,
        style:BorderStyle.Dashed,
        color:Color.Blue
      })
      .margin({
        bottom:40
      })
      Row(){
        // 容器2
      }
      .width(100)
      .height(100)
      .backgroundColor(Color.Pink)
      //为属性中在传入一个对象,在对象中设置方位词来对4边分别设置
      // border({
      //   width:{方位词:值},
      //   color:{方位词:'颜色名 或 16进制代码'},
      //   style:{方位词:style.BorderStyle.枚举}
      // })
      .border({
        width:{left:3,right:4,top:5,bottom:6},
        color:{left: 'red',right:'#FFA500',top:'green',bottom:'#2E70C8'},
        style:{left:BorderStyle.Dashed,right:BorderStyle.Dotted,top:BorderStyle.Solid}
      })
    }
  }
}