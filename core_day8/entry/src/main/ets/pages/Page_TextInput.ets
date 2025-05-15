import { text } from '@kit.ArkGraphics2D';

@Entry
@Component
struct Page_TextInput {
  @State message: string = '';
  controller:TextInputController = new TextInputController()

  build() {
    Column(){
      TextInput({
        // 占位文本
        placeholder:'请输入文本',
        //获取用户输入内容:1.创建状态变量2.使用双向绑定
        text:$$this.message,
        // 控制器
        controller:this.controller
      })
        // 输入框内容发生变化激活函数
        .onChange(value => this.message = value)
        //输入框类型
        .type(InputType.Password)
        // 密码可见性图标
        .passwordIcon({
          onIconSrc:$r('sys.media.safe_volume_notification_icon'),
          offIconSrc:$r('sys.media.ohos_ic_public_video_off')
        })
        // 输入最大长度
        .maxLength(6)
        // 下边框线
        .showUnderline(true)
        .placeholderColor(Color.Orange)
      Button('获取用户输入')
        .onClick(()=> AlertDialog.show({message:this.message}))
    }
    .height('100%')
    .width('100%')
  }
}