//同Appstorage,获取环境变量
Environment.envProp('language','en')
Environment.envProp('colorMode',ColorMode.DARK)
@Entry
@Component
struct Page_Environment {
  @State message: string = 'Hello World';
  @StorageProp('languageCode') language:string = ''
  @StorageProp('colorMode') colorMode:ColorMode=ColorMode.DARK

  build() {
    Column(){
      Text(this.language=='en'?this.message:'欢迎')
        .fontSize(50)
        .fontColor(this.colorMode==ColorMode.DARK?Color.Orange:Color.Pink)
    }
    .height('100%')
    .width('100%')
  }
}