import { router } from '@kit.ArkUI'

interface card{
  img:ResourceStr
  title:string
  desc:string
  type:string
}


@Entry
@Component
struct Page_01_Task {
  cards:card[] = [
    {
      img:$r('app.media.project03'),
      title:'后台管理系统',
      desc:'以Vue技理后台后台管理系统面试题面试整理',
      type:'后台系统'
    },
    {
      img:$r('app.media.project02'),
      title:'在线问医生平台 (医疗类)',
      desc:'通过vue3+ts实现的在线医疗问诊相关技术整理',
      type:'H5项目'
    },
    {
      img:$r('app.media.project01'),
      title:'鸿蒙知识点',
      desc:'以ArkTS与ArkUI为主的鸿蒙基础知识点讲解',
      type:'鸿蒙应用'
    }
  ]
  build() {
    Column(){
      List(){
        ForEach(this.cards,(item:card)=>{
          ListItem(){
            listCards({card:item})
          }
        })
      }
    }
    .height('100%')
    .width('100%')
  }
}

@Component
struct listCards {
  @Prop card:card
  build() {
    Row({space:10}){
      Image(this.card.img)
        .sharedTransition(this.card.title,{duration:300})
        .width(70)
        .height(95)
        .onClick(()=>{
          router.pushUrl({
            url:'pages/Task/Page_02_Task',
            params:{
              img:this.card.img,
              title:this.card.title,
              desc:this.card.desc
            }
          })
        })
      Column(){
        Column(){
          Text(this.card.title)
            .fontSize(20)
            .fontWeight(500)
          Text(this.card.desc)
            .fontSize(13)
            .fontColor('#ccc')
        }
        .alignItems(HorizontalAlign.Start)
        Text(this.card.type)
          .width(60)
          .height(20)
          .fontSize(12)
          .backgroundColor('#ccc')
          .borderRadius(4)
          .fontColor('#2FC5CD')
          .textAlign(TextAlign.Center)
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
}