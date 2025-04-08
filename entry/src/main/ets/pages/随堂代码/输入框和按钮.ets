import { Size } from '@ohos/hypium'

@Entry
@Component
struct Index {
  // 文本输入框和按钮：
  // 使用控件TextIput({对象})来定义文本输入框
  // 在对象中可以使用placeholder来定义占位文本
  // 在Column()或rows()中使用对象space:值 来设置容器内组件的间距
  build() {
    Column({space:10}){
      TextInput({
        placeholder:'请输入用户名'
      })
      TextInput({
        placeholder:'请输入密码'
      })
        .type(InputType.Password)
      // 按钮组件：
          // Button('按钮名')
      Button('登录')
        .width(200)
    }
  }
}
