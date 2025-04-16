interface PC{
  color:string,
  brand:string,
  price:number,
  weight:number,
  playVideo:(videoName:string)=>void,
  playGame:(gameName:string)=>void,
}

let HuaWeiPc:PC={
  color:'grey',
  brand:'HuaWei',
  price:3000,
  weight:1,
  playVideo:(videoName:string)=>{
    console.log('播放视频',videoName)
  },
  playGame:(gameName:string)=>{
    console.log('玩游戏',gameName)
  }
}
HuaWeiPc.playVideo('怪物猎人')


@Entry
@Component
struct Page_objectEg_PC {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_objectEg_PCHelloWorld')
        .fontSize($r('app.float.page_text_font_size'))
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
        .onClick(() => {
          this.message = 'Welcome';
        })
    }
    .height('100%')
    .width('100%')
  }
}