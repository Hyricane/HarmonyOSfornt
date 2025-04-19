import { autoFillManager } from '@kit.AbilityKit';

@Entry
@Component
struct Page_Preview_Layout {
  @State message: string = 'Hello World';

  build() {
    Column(){
      // 父容器
      Row(){
        // 子容器1
      }
      .backgroundColor(Color.Pink)
      .width(100)
      .height(100)
      // 外边距,用于隔开相邻盒子的距离
      // margin(数值),四个方向外边距均为给出的数值
      .margin(50)
      // margin({top:数值 left:数值 right:数值 bottom:数值})
      // 传入一个对象,在对象中设置方位词来分别设置4边外边距
      .margin({
        bottom:50
      })
      // 边框圆角
      // borderRadius(数值),4个角圆角均为给定数值
      .borderRadius(10)
      // 传入对象,在对象中设置方位词分别设置4个角圆角
      // borderRadius({topRight:数值 topLeft:数值 bottomRight:数值 bottomLeft:数值})
      .borderRadius({
        topRight:50
      })
      Row(){
        // 子容器2
      }
      .height(100)
      .width(100)
      .backgroundColor(Color.Orange)
      //tips 对于正方形容器,将圆角半径设置为宽的一半使其变成圆形
      .borderRadius(50)
      Row(){
        // 子容器3
      }
      .width(200)
      .height(100)
      .backgroundColor(Color.Blue)
      .margin({
        top:50
      })
      //tips 对于矩形容器,将圆角半径设为高的一半,使其变成胶囊形
      .borderRadius(50)
    }
    .backgroundColor(Color.Green)
    .width(300)
    .height(600)
    // 内边距,设置盒子内容距离盒子4边的距离
    // padding(数值),传入一个数值为4边设置统一距离
    .padding(50)
    // 通过传入对象,在对象中通过方位词分别设置4边内边距
    // padding({top:数值 left:数值 right:数值 bottom:数值})
    .padding({
      top:20
    })
  }
}