@Entry
@Component
struct Page_Task_Dongchedi {
  rankArr:ResourceStr[] =[
    $r('app.media.ic_homework_nav01'),
    $r('app.media.ic_homework_nav02'),
    $r('app.media.ic_homework_nav03'),
    $r('app.media.ic_homework_nav04'),
    $r('app.media.ic_homework_nav05'),
    $r('app.media.ic_homework_nav05'),
    $r('app.media.ic_homework_nav05'),
  ]

  rankArr1:string[] = ['车系月销榜','车系周销榜','品牌月销榜','品牌周销榜']

  rankArrTAG:string[] = ['全部','轿车','SUV','MPV','销量飙升']

  @State firstBarIndex:number=0
  @State secondBarIndex:number=0
  @State thirdBarIndex:number=0

  build() {
    Column(){
      //banner
      Stack(){
        Image($r('app.media.ic_homework_bg'))
        this.editBuilder()
        // bannerMid
        Column({space:10}){
          Image($r('app.media.ic_homework_cup'))
            .width(100)
            .height(60)
          Image($r('app.media.ic_homework_rank'))
            .width(140)
            .height(35)
        }
        Tabs(){
          ForEach(this.rankArr,(item:ResourceStr,index:number)=>{
            TabContent(){
              //第二层
              Tabs(){
                ForEach(this.rankArr1,(item:string,index:number)=>{
                  TabContent(){
                    // 第三层
                    Tabs(){
                      ForEach(this.rankArrTAG,(item:string,index:number)=>{
                        TabContent(){

                        }
                        .tabBar(this.thirdBar(item,index))
                      })
                    }
                    .barMode(BarMode.Scrollable)
                    .onChange((index)=>{
                      this.thirdBarIndex = index
                      console.log(index.toString())
                    })
                  }
                  .tabBar(this.secondBar(item,index))
                })
              }
              .onChange((index)=>{
                this.secondBarIndex = index
                console.log(index.toString())
              })
            }
              .tabBar(this.tabBarBuilder(item,index))
          })
        }
        .fadingEdge(false)//删除渐隐效果
        .barMode(BarMode.Scrollable)
        .onChange((index)=>{
          this.firstBarIndex = index
          console.log(index.toString())
        })
        .offset({y:'80%'})
        .width('100%')
      }
      .width('100%')
      .height('40%')
    }
    .height('100%')
    .width('100%')
  }


  @Builder secondBar(title:string,index:number){
    Text(title)
      .width(100)
      .height(50)
      .textAlign(TextAlign.Center)
      .fontSize(12)
      .borderRadius(this.secondBarIndex==index?10:0)
      .fontColor(this.secondBarIndex==index?Color.Black:'#fff')
      .linearGradient(this.secondBarIndex==index?{colors:[['#fff',1],['#fff',0]]}:{ colors: [['#060B13', 0], ['#1B3D68', 1]] })

  }

  @Builder thirdBar(title:string,index:number){
    Text(title)
      .padding({left:10,right:10})
      .height(40)
      .backgroundColor(index==this.thirdBarIndex?Color.Orange:'#F5F7FB')
      .borderRadius(5)
      .margin({right:10})
  }

  @Builder tabBarBuilder(imgUrl:ResourceStr,index:number){
    Image(imgUrl)
      .width(this.firstBarIndex==index?70:60)
      .height(this.firstBarIndex==index?50:40)
      .margin({right:10})
  }

  @Builder
  editBuilder() {
    Row() {
      Image($r('app.media.ic_homework_back'))
        .svgExtend()
      Row({ space: 20 }) {
        Image($r('app.media.ic_homework_search'))
          .svgExtend()
        Image($r('app.media.ic_homework_edit'))
          .svgExtend()
      }
    }
    .position({ y: 20 })
    .padding({ left: 10, right: 10 })
    .justifyContent(FlexAlign.SpaceBetween)
    .width('100%')
  }
}

@Extend(Image)
function svgExtend() {
  .width(30)
  .aspectRatio(1)
  .fillColor('#fff')
}
