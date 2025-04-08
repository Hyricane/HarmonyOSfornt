import { Size } from '@ohos/hypium'

@Entry
@Component
struct Index {
  build() {
    Column(){
      Text('添加圆角')
        .border({
          width:1,
          color:Color.Red,
          style:BorderStyle.Solid
        })
        //通过为borderRadius传入数值来给4个角设置圆角效果
        .borderRadius(5)
        .margin({
          bottom:10
        })

      Text('添加圆角')
        .border({
          width:1,
          color:Color.Blue,
          style:BorderStyle.Solid
        })
        // 通过设置方位词来分别设置
        .borderRadius({
          topLeft:10,
          topRight:5,
          bottomLeft:10,
          bottomRight:5
        })
    }
  }
}
