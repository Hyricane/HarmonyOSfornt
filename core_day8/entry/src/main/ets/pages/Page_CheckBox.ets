@Entry
@Component
struct Page_CheckBox {
  @State isChecked: boolean = false

  build() {
    Column(){
      Checkbox()
        // 形状
        .shape(CheckBoxShape.ROUNDED_SQUARE)
        // 是否勾选
        .select($$this.isChecked)
      Button('显示结果')
        .onClick(()=>{
          AlertDialog.show({message:this.isChecked+''})
        })
    }
    .height('100%')
    .width('100%')
  }
}