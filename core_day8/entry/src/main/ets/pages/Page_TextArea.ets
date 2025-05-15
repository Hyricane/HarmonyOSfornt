@Entry
@Component
struct Page_TextArea {
  @State message: string = '';

  build() {
    Column(){
      TextArea({placeholder:'请输入30字以上的评价',text:$$this.message})
        .height(100)
        // 右下角显示计数,需要配合maxline使用
        .showCounter(true)
        .maxLength(100)
      Button('获取')
        .onClick(()=>AlertDialog.show({message:this.message}))
    }
    .height('100%')
    .width('100%')
  }
}