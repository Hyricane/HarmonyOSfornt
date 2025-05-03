// 卡片对象
interface Card{
  cardUrl:string,
  cardCount:number
}

@Entry
@Component
struct Page_Demo_Cards {
  @State cards:Card[] = [
    { cardUrl: 'app.media.bg_00', cardCount: 0},
    { cardUrl: 'app.media.bg_01', cardCount: 0},
    { cardUrl: 'app.media.bg_02', cardCount: 0},
    { cardUrl: 'app.media.bg_03', cardCount: 0},
    { cardUrl: 'app.media.bg_04', cardCount: 0},
    { cardUrl: 'app.media.bg_05', cardCount: 0}

  ]
  //控制遮罩层
  @State isVis : boolean = false
  //遮罩层图片缩放效果
  @State imgScaleX:number = 0
  // 抽卡
  @State imgN:number = 999
  // 中奖层遮罩
  @State bounsisVis : boolean = false
  //代抽奖品
  @State bounus : string[] = ['hw','pg','xm']
  @State bounusCount : number = 0
  build() {
    Column() {
      // 一. 初始界面
      Column() {
        // 图片区域
        Flex({wrap: FlexWrap.Wrap}) {
          ForEach(this.cards,(item:Card,index:number)=>{
            Badge({
              count: item.cardCount,
              style: { badgeSize: 16, badgeColor: '#f00', fontSize: 14 }
            }) {
                Image($r(item.cardUrl))
                  .width(80)
            }
            .margin(15)
          })
        }
        .margin({top: 100, bottom: 50})
        .padding({left: 15})
        // 抽卡按钮
        Button('立即抽卡')
          .width(200)
          .backgroundColor('#ED5B8C')
          .stateStyles({
            pressed: {
              .backgroundColor('#EA446C')
            }
          })
          .onClick(()=>{
            // 控制遮罩层显示
            this.isVis = true
            // 遮罩层图片缩放控制
            this.imgScaleX = 1
            // 抽卡逻辑
            this.imgN=Math.floor(Math.random() *6)
            this.cards[this.imgN] = {
              cardUrl:'app.media.img_0'+this.imgN,
              cardCount:this.cards[this.imgN].cardCount+1
            }
            this.bounusCount = Math.floor(Math.random()*3)
          })
          .animation({
            duration: 1000
          })
      }
      // 遮罩层
      Column({space:30}){
        Text('获得生肖卡')
          .fontSize(25)
          .fontWeight(500)
          .fontColor('#fff')
        Image($r(`app.media.img_0${this.imgN}`))
          .scale({x:this.imgScaleX})
          .animation({duration:500})
          .width(200)
        Button('开心收下')
          .width(200)
          .height(50)
          .backgroundColor(Color.Transparent)
          .border({width:2,color:'#fff'})
          .onClick(()=>{
            this.isVis = false
            this.imgScaleX=0
            let bounsCount : number = 0
            for(let item of this.cards){
              if (item.cardCount>0) {
                bounsCount++
              }
            }
            if (bounsCount==6) {
              this.bounsisVis=true
            }
          })
      }
      .visibility(this.isVis ? Visibility.Visible : Visibility.Hidden)
      .justifyContent(FlexAlign.Center)
      .backgroundColor('rgba( 21, 21, 21,0.8)')
      .width('100%')
      .height('100%')
      .position({
        x:0
      })
      // 中奖层遮罩
      if (this.bounsisVis){
        Column({space: 50}) {
          Text('恭喜获得手机一部')
            .fontColor('#F5EBCF')
            .fontSize(25)
            .fontWeight(600)
          Image($r(`app.media.${this.bounus[this.bounusCount]}`))
            .width(300)
          Button('再来一次')
            .width(200)
            .height(50)
            .backgroundColor(Color.Transparent)
            .border({width: 2, color: '#FFF9E0'})
            .onClick(()=>{
              this.bounsisVis=false
              this.cards = [
                { cardUrl: 'app.media.bg_00', cardCount: 0},
                { cardUrl: 'app.media.bg_01', cardCount: 0},
                { cardUrl: 'app.media.bg_02', cardCount: 0},
                { cardUrl: 'app.media.bg_03', cardCount: 0},
                { cardUrl: 'app.media.bg_04', cardCount: 0},
                { cardUrl: 'app.media.bg_05', cardCount: 0}

              ]
            })
        }
        .width('100%')
        .height('100%')
        .backgroundColor('rgba(0,0,0,0.8)')
        .justifyContent(FlexAlign.Center)
        .position({x: 0, y: 0})
      }
    }
  }
}