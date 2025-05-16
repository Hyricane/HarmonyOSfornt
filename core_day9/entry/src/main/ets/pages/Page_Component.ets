// 自定义组件
// 使用快捷输入comp定义自定义组件
import { AlertDialog } from '@ohos.arkui.advanced.Dialog';
import { HelloComponent } from '../component/HelloComponent';

// 与主体结构的唯一不同点是没有@Entry修饰,@Entry表示一个界面
@Component
struct MyComponent {
  // 自定义组件可以写自己的状态变量
  @State message: string = '我的自定义组件';
  build() {
    Text(this.message)
      .onClick(()=>{
        this.message = '被点击'
      })
  }
}

@Entry
@Component
struct Page_Component {

  build() {
   Column(){
     MyComponent()
     // 可以正常设置事件参数
     MyComponent({message:'被传递参数'})
       .onClick(()=>{
         console.log('被点击')
       })
       .width(100)
       .height(100)
       .backgroundColor(Color.Pink)
     // 调用外部导入的组件
     HelloComponent()
   }
    .height('100%')
    .width('100%')
  }
}