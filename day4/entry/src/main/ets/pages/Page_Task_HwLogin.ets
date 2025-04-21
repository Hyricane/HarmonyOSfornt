@Entry
@Component
struct Page_HwLogin {
  @State message: string = 'Hello World';

  build() {
    Column(){
      Column({space:20}){
        Image($r('app.media.huawei'))
          .width(80)
          .aspectRatio(1)
        TextInput({
          placeholder:'请输入用户名'
        })
        TextInput({
          placeholder:'请输入密码'
        })
          .type(InputType.Password)
        Button('登录')
          .width('100%')
        Row({space:20}){
          Text('前往注册')
          Text('忘记密码')
        }
      }
      .padding(30)
    }
    .width('100%')
    .height('100%')
  }
}