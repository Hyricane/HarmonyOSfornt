import { Size } from '@ohos/hypium'

@Entry
@Component
struct Index {
  build() {
    Column(){
      Text('测试文本')
        // 通过border对象设置边框,width属性是必须的，一次设置4个边框
        .border({
          width:1,
          color:Color.Red,
          style:BorderStyle.Solid
        })
        .margin(10)
      Text('测试文本2')
        .border({
          // 通过width对象中的方位词设置单边框
          width:{left:1,right:2}
        })
    }
  }
}
