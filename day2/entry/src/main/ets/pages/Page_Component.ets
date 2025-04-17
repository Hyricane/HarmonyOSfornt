@Entry
@Component
struct Page_Commonpent {
  @State message: string = 'Hello World';

  // 所谓组件即为封装在arkui中的函数,使用组件就是调用函数
  build() {
    // 只能有一个根容器
    Column() {
      // 文本组件
      Text('第一列文本')
      Row() {
        Text('第一行文本')
        Text('第二行文本')
        // 按钮组件
        Button('按钮')
      }

      // 图片组件
      Image('https://cdn.nlark.com/yuque/0/2024/png/12792229/1707016013259-29e0f3c6-a000-4a8f-8ddc-ed58d7085842.png?x-oss-process=image%2Fwatermark%2Ctype_d3F5LW1pY3JvaGVp%2Csize_21%2Ctext_6buR6ams56iL5bqP5ZGY%2Ccolor_FFFFFF%2Cshadow_50%2Ct_80%2Cg_se%2Cx_10%2Cy_10%2Fformat%2Cwebp')
    }
  }
}