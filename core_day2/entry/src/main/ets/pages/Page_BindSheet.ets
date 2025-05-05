@Entry
@Component
struct Page_BindSheet {
  @Builder SheetBuilder(){
    Text('测试')
  }
  @State isShow:boolean = false

  build() {
    Column(){
      Button('点击弹窗')
        .onClick(()=>{
          this.isShow = true
        })
        .bindSheet(

          // 关于开关
          // 我们定义了一个状态变量isShow来改变布尔值控制是否显示,点击结构中自带的❌只是暴力关闭结构,再次点击按钮并不会弹出页面
          //解决方法:1.自行编写一个带❌的结构控制
          //           2.在定义的状态变量布尔值前加上双向绑定$$,所谓双向绑定就是为ArkTs提供变量引用
          // 是否显示结构 Boolean
          $$this.isShow,
          // 结构布局,一般传入@Builder
          this.SheetBuilder,
          {
            // 对象中设置一些属性
            height:100,
            // 自带❌是否显示
            showClose:true,
            // 拖拽档位,传入数组,仅可设置3档
            detents:[300,600,900],
            // 拖拽条是否显示
            dragBar:true
          }
        )
    }
    .height('100%')
    .width('100%')
  }
}