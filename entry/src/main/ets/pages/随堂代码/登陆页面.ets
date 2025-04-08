import { Size } from '@ohos/hypium'

@Entry
@Component
struct Index {
  build() {
    Column({space:10}){
      Image($r('app.media.startIcon'))
        .width(100)
      TextInput({
        placeholder:'请输入用户名'
      })
        .height(50)
      TextInput({
        placeholder:'请输入密码'
      })
        .height(50)
        .type(InputType.Password)
      Button('登录')
        .width(350)
        .height(45)
        Row({space:20}){
        Text('前往注册')
          .fontColor(Color.Grey)
          Text('忘记密码')
            .fontColor(Color.Grey)
        }
    }
    .width('100%')
  }
}
