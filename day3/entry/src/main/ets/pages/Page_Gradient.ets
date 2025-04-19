@Entry
@Component
struct Page_Gradient {
  @State message: string = 'Hello World';

  build() {
    Column({space:20}) {
      Column(){

      }
      // 线性渐变
      .linearGradient({

        colors:[
          // [第一个颜色,位置]
          ['#FFA54F',0.3],
          // [第2个颜色,位置]
          ['#FF7F50',0.6],
          // [第3个颜色,位置]
          ['#FF4500',1]
        ],
        // 渐变方向
        // direction:GradientDirection.Right
        // 渐变角度(与方向二选一)
        angle:30,
        // 渐变色重复平铺
        // repeating:true

        // 经向渐变
        // 从圆心向周围发散
      })
      .width(200)
      .height(100)
      Column(){

      }
      .width(200)
      .aspectRatio(1)
      .radialGradient({
        colors:[
        // [第一个颜色,位置]
          ['#FFA54F',0.3],
          // [第2个颜色,位置]
          ['#FF7F50',0.6],
          // [第3个颜色,位置]
          ['#FF4500',1]
        ],
        // 圆心位置
        center:[100,100],
        // 发散半径
        radius:100
      })
    }
  }
}