import { router } from '@kit.ArkUI'

interface card_getp{
  img:ResourceStr
  title:string
  desc:string
}
@Entry
@Component
struct Page_02_Task {
  card_getpImp:card_getp= {
  img: '',
  title: '',
  desc: ''
}
  aboutToAppear(): void {
    this.card_getpImp = router.getParams() as card_getp
  }
  build() {
    Column(){
      Column(){
        Row(){
          Image($r('app.media.ic_public_arrow_left'))
            .width(30)
            .fillColor('#fff')
            .onClick(()=>{
              router.back()
            })
        }
        .margin({top:20,bottom:50})
        .width('100%')
        Row({space:10}){
          Image(this.card_getpImp.img)
            .sharedTransition(this.card_getpImp.title,{duration:300})
            .width(70)
            .height(95)
          Column(){
            Column({space:20}){
              Text(this.card_getpImp.title)
                .fontColor('#fff')
                .fontSize(20)
                .fontWeight(500)
              Text(this.card_getpImp.desc)
                .fontSize(13)
                .fontColor('#fff')
            }
            .alignItems(HorizontalAlign.Start)
            Text('学习进度: 10%')
              .fontSize(14)
              .fontColor('#ccc')
          }
          .width('100%')
          .height(95)
          .justifyContent(FlexAlign.SpaceBetween)
          .alignItems(HorizontalAlign.Start)
        }
        .padding({left:10,right:10})
        .height(120)
        .width('100%')
      }
      .height(240)
      Column(){
        Text('问题列表')
          .fontWeight(500)
          .fontSize(20)
      }
      .alignItems(HorizontalAlign.Start)
      .padding(20)
      .layoutWeight(1)
      .width('100%')
      .backgroundColor('#fff')
      .borderRadius(20)
    }
    .backgroundImage($r('app.media.project_bg'))
    .backgroundImageSize(ImageSize.Contain)
    .backgroundColor('#683A18')
    .height('100%')
    .width('100%')
  }
}