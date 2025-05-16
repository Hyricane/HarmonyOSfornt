@Component
struct TestComp {
  @State cfcMsg:string = ''
  cfcFn=() => {
    AlertDialog.show({message:this.cfcMsg})
  }
  build() {
    Button('测试回调函数')
      .onClick(this.cfcFn)
  }
}

@Entry
@Component
struct Page_ComponentFnCallBack {
  @State message: string = 'Hello World';

  build() {
    Column(){
      TestComp({cfcMsg:'回调函数激活'})
    }
    .height('100%')
    .width('100%')
  }
}