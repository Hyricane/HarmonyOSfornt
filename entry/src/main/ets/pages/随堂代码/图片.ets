import { Size } from '@ohos/hypium'

@Entry
@Component
struct Index {
  // image图片标签
  // 语法：Image('网络图片路径')
  // 使用以下语法来快速找到储存在resource/base/media下的图片
  //      Image($r('app.media.图片名'))
  // 注：使用常规的相对路径无法导入图片，原因未知
  build() {
    Column(){
      //网络图片地址
      Image('https://www.baidu.com/img/PCtm_d9c8750bed0b3c7d089fa7d55720d6cf.png')
        .width(200)
      Text('百度一下，你就知道')
        .lineHeight(20)
        .width(200)
      Image($r('app.media.test'))
        .width(200)
      Row(){
        Image($r('app.media.touxiang'))
          .width(20)
        Text('本地图片路径的简洁写法')
          .lineHeight(20)
      }
    }
    .width(200)
  }
}
