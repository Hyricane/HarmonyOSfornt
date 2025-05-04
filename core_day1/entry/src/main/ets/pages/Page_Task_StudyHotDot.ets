interface banner {
  imgUrl:ResourceStr,
  title:string
}

interface Nav{
  imgUrl:ResourceStr,
  info:string
}

@Entry
@Component
struct Page_Task_StudyHotDot {

  banners:banner[] = [
    {imgUrl:$r('app.media.banner_01_1'),title:'谷歌杀入开源大模型，凭什么问鼎王座？'},
    {imgUrl:$r('app.media.banner_01_2'),title:'微软牵手OpenAI劲敌！Mistral顶级大模型不再开源'},
    {imgUrl:$r('app.media.banner_01_3'),title:'生成式AI会扼杀DevSecOps吗'},
    {imgUrl:$r('app.media.banner_01_3'),title:'微软继续Linux化！sudo原生命令强势登录Windows'}
  ]

  navItem:Nav[] = [
    {imgUrl:$r('app.media.ic_01_1'),info:'精选内容'},
    {imgUrl:$r('app.media.ic_01_2'),info:'学堂'},
    {imgUrl:$r('app.media.ic_01_3'),info:'鸿蒙开发者社区'},
    {imgUrl:$r('app.media.ic_01_4'),info:'博客'},
    {imgUrl:$r('app.media.ic_01_5'),info:'企业培训'},
    {imgUrl:$r('app.media.ic_01_6'),info:'Next训练营'},
    {imgUrl:$r('app.media.ic_01_7'),info:'精培'},

  ]

  @Builder
  Nav(){
    Grid(){
      ForEach(this.navItem,(item:Nav)=>{
        GridItem(){
          Column({space:5}){
            Image(item.imgUrl)
              .width(40)
              .aspectRatio(1)
            Text(item.info)
              .fontSize(14)
          }
        }
        .width('25%')
        .height('100%')
      })
    }
    .height(65)
    .scrollBar(BarState.Off)
    .margin({top:10})
    .rowsTemplate('1fr')
    .rowsGap(24)
  }

  build() {
    // 主体
    Column(){
      Row(){
        Image($r('app.media.hot_01'))
          .width(60)
        Row({space:15}){
          Image($r('app.media.user_01'))
            .width(20)
          Image($r('app.media.more_01'))
            .width(20)
        }
      }
      .height(56)
      .justifyContent(FlexAlign.SpaceBetween)
      .padding({
        left:28,
        right:16
      })
      .width('100%')
      // banner区
        Swiper(){
          ForEach(this.banners,(item:banner)=> {
            Stack() {
              Image(item.imgUrl)
              Text(item.title)
                .margin({
                  left:10,
                  bottom:30
                })
                .fontSize(16)
                .fontWeight(FontWeight.Bold)
                .fontColor('#fff')
            }
            .alignContent(Alignment.BottomStart)
          })
        }
        .autoPlay(true)
        .indicator(
          Indicator.dot()
            .itemWidth(30)
            .itemHeight(5)
            .color('rgba(0,0,0,0.4)')
            .selectedItemWidth(30)
            .selectedColor('#fff')
            .left(20)
        )
        .width('100%')
        .height(250)
      // 滚动栅格
      Row(){
        this.Nav()
      }
      .width('100%')
      .padding({left:12})
    }
    .height('100%')
    .width('100%')
  }
}