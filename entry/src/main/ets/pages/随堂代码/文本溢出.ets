import { Size } from '@ohos/hypium'

@Entry
@Component
struct Index {
  // 文本溢出
  // 当文本长度超过规定的容器大小可以使用textOverflow来美化
  // 语法：.textOverflow({overflow:TextOverflow.效果})
  // 效果：Ellipsis：溢出内容以省略号代替
  //       clips：裁剪溢出内容，同none
  //       marqueen:单行滚动播放
  // 注意，这里的语法与通常属性的语法不同，除marqueen外所有属性都需要配合.maxLines(行数)以规定最大行数来使用
  build() {
    Column(){
      Text('HarmonyOS开发初体验')
      Row(){
        Text('HarmonyOS SDK 是面向鸿蒙应用和元服务开发的开放能力合集，提供包括应用框架、应用服务、系统、媒体、AI、图形在内的六大领域丰富完备的开放能力，助力构建焕然一新的鸿蒙应用和元服务，带来创新易用的全场景体验。')
          .textOverflow(
            {
              overflow:TextOverflow.Ellipsis
            }
          )
          .maxLines(3)
      }
    }
  }
}
