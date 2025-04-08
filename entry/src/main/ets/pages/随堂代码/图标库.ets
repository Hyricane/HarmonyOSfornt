import { Size } from '@ohos/hypium'

@Entry
@Component
struct Index {
  build() {
    // 图标库的使用
    Column(){
      // 导入方法同导入图片
      Image($r('app.media.ic_gallery_collage'))
        .width(50)
        // 通过.fillColor()方法设置颜色
        .fillColor(Color.Red)
    }
  }
}
