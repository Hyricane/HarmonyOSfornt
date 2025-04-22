@Entry
@Component
struct Page_StateStyle {
  @State message: string = 'Hello World';

  build() {
    // 多态样式
    Column({space:10}){
      // 按压态
      Text('按压态')
        .width('50%')
        .aspectRatio(1)
        .backgroundColor(Color.Orange)
      // 多态样式，用于产生动作时改变样式
      // .stateStyles({对象{属性:{对象:属性}}})
      .stateStyles({
        pressed:{
          .width(100)
          .height(100)
          .backgroundColor(Color.Pink)
        }
      })
        // 属性变化时的动画效果
        // .animation({对象})
        // 必须写在所有属性后
        .animation({
          // 变化时长，以毫秒为单位
          duration:1000,
          // 变化速度，默认EaseInOut
          curve:Curve.Linear,//匀速
          // 动画播放次数，默认1次，-1无限次
          iterations:3,
          // 动画播放延迟时间
          delay:2
        })
      Button('按钮')
        .stateStyles({
          // 正常态
          normal:{
            .backgroundColor(Color.Orange)
          },
          disabled:{
            // 禁用态
            .backgroundColor(Color.Pink)
        },
          focused:{
            // 聚焦态
            .backgroundColor(Color.Green)
          }
        })
      Text('平移变化')
        .width(100)
        .height(100)
        .backgroundColor(Color.Green)
        // 给定初始位置
        .translate({
          x:0,
          y:0,
        })
        .stateStyles({
          pressed:{
            // 平移变换时实现动画效果需要先给定初始位置
            .translate({
              x:100,
              y:100,
            })
          }
        })
        .animation({
          duration:1000
        })

      Text('缩放')
        .width(100)
        .height(100)
        .backgroundColor(Color.Pink)
        // 给定初始缩放倍数和缩放中心点位置
        .scale({
          x:1,
          y:1,
          centerX:0,
          centerY:0
        })
        .stateStyles({
          pressed:{
            .scale({
              // x轴缩放倍数
              x:2,
              // y轴缩放倍数
              y:2,
              // 缩放中心点x
              centerX:0,
              // 缩放中心点y
              centerY:0
            })
          }
        })
        .animation({
          duration:1000
        })

      Text('旋转')
        .width(100)
        .height(100)
        .backgroundColor(Color.Yellow)
        // 给定初始位置
        .rotate({
          angle:0,
          centerX:0,
          centerY:0
        })
        .stateStyles({
          pressed:{
            .rotate({
              // 旋转角度
              angle:90,
              // 旋转中心点
              centerX:0,
              centerY:0
            })
          }
        })
        .animation({
          duration:1000,
        })
    }
    .width('100%')
    .height('100%')
  }
}