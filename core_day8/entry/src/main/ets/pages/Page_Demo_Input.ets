@Entry
@Component
struct Page_Demo_Input {
  @State message: string = '';
  @State pwd: string = '';


  build() {
    Column({space:10}){
      TextInput({placeholder:'请输入用户名',text:$$this.message})
        .backgroundColor('#fff')
        .showUnderline(true)
      TextInput({placeholder:'请输入密码',text:$$this.pwd})
        .type(InputType.Password)
        .showUnderline(true)
        .backgroundColor('#fff')
      Row({space:10}){
        Button('清空')
          .onClick(()=>{
            this.message=''
            this.pwd=''
          })
        Button('获取')
          .onClick(()=>{
            AlertDialog.show({message:`用户名:${this.message}密码:${this.pwd}`})
          })
      }
    }
    .height('100%')
    .width('100%')
  }
}