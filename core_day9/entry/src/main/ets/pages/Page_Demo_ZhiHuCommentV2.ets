import { text } from '@kit.ArkGraphics2D'

// 数据格式
interface ReplyItemV2 {
  id: number
  avatar: ResourceStr
  author: string
  content: string
  time: string
  area: string
  likeNum: number
  likeFlag: boolean
}

@Entry
@Component
struct Page_Demo_ZhiHuCommentV2 {
  @State replyListV2: ReplyItemV2[] = [
    {
      id: 1,
      avatar: 'https://picx.zhimg.com/027729d02bdf060e24973c3726fea9da_l.jpg?source=06d4cd63',
      author: '偏执狂-妄想家',
      content: '更何况还分到一个摩洛哥[惊喜]',
      time: '11-30',
      area: '海南',
      likeNum: 34,
      likeFlag: false
    },
    {
      id: 2,
      avatar: 'https://pic1.zhimg.com/v2-5a3f5190369ae59c12bee33abfe0c5cc_xl.jpg?source=32738c0c',
      author: 'William',
      content: '当年希腊可是把1：0发挥到极致了',
      time: '11-29',
      area: '北京',
      likeNum: 58,
      likeFlag: true
    },
    {
      id: 3,
      avatar: 'https://picx.zhimg.com/v2-e6f4605c16e4378572a96dad7eaaf2b0_l.jpg?source=06d4cd63',
      author: 'Andy Garcia',
      content: '欧洲杯其实16队球队打正赛已经差不多，24队打正赛意味着正赛阶段在小组赛一样有弱队。',
      time: '11-28',
      area: '上海',
      likeNum: 10,
      likeFlag: false
    },
    {
      id: 4,
      avatar: 'https://picx.zhimg.com/v2-53e7cf84228e26f419d924c2bf8d5d70_l.jpg?source=06d4cd63',
      author: '正宗好鱼头',
      content: '确实眼红啊，亚洲就没这种球队，让中国队刷',
      time: '11-27',
      area: '香港',
      likeNum: 139,
      likeFlag: true
    },
    {
      id: 5,
      avatar: 'https://pic1.zhimg.com/v2-eeddfaae049df2a407ff37540894c8ce_l.jpg?source=06d4cd63',
      author: '柱子哥',
      content: '我是支持扩大的，亚洲杯欧洲杯扩到32队，世界杯扩到64队才是好的，世界上有超过200支队伍，欧洲区55支队伍，亚洲区47支队伍，即使如此也就六成出现率',
      time: '11-27',
      area: '旧金山',
      likeNum: 29,
      likeFlag: false
    },
    {
      id: 6,
      avatar: 'https://picx.zhimg.com/v2-fab3da929232ae911e92bf8137d11f3a_l.jpg?source=06d4cd63',
      author: '飞轩逸',
      content: '禁止欧洲杯扩军之前，应该先禁止世界杯扩军，或者至少把亚洲名额一半给欧洲。',
      time: '11-26',
      area: '里约',
      likeNum: 100,
      likeFlag: false
    }
  ]
  @State toCommentV2: ReplyItemV2={
    id: 1,
    avatar: $r("app.media.ic_avatar"),
    author: '周杰伦',
    content: '意大利拌面应该使用42号钢筋混凝土再加上量子力学缠绕最后通过不畏浮云遮望眼',
    time: '11-30',
    area: '海南',
    likeNum: 98,
    likeFlag: true
  }
  @State publishContent:string = ''
  build() {
    Column() {
      // 上半部分
      Column() {
        Column() {
          // 顶部区域
          Row() {
            Row() {
              Image($r('app.media.ic_public_arrow_left'))
                .width(20)
                .height(20)
            }
            .borderRadius(20)
            .backgroundColor('#f6f6f6')
            .justifyContent(FlexAlign.Center)
            .width(30)
            .aspectRatio(1)
            .margin({
              left: 15
            })

            Text("评论回复")
              .layoutWeight(1)
              .textAlign(TextAlign.Center)
              .padding({
                right: 35
              })
          }
          .width('100%')
          .height(50)
          .border({
            width: {
              bottom: 1
            },
            color: '#f6f6f6',
          })


          // 顶部评论

          Row() {
            Image(this.toCommentV2.avatar)
              .width(32)
              .height(32)
              .borderRadius(16)
            Column({ space: 10 }) {
              Text(this.toCommentV2.author)
                .fontWeight(600)
              Text(this.toCommentV2.content)
                .lineHeight(20)
                .fontSize(14)
                .fontColor("#565656")

              Row() {
                Text(`${new Date().getMonth()+1}-${new Date().getDate()} . IP属地 ${this.toCommentV2.area}`)
                  .fontColor("#c3c4c5")
                  .fontSize(12)
                Row() {
                  Image($r("app.media.ic_like"))
                    .width(14)
                    .aspectRatio(1)
                    .fillColor(this.toCommentV2.likeFlag?Color.Red:"#c3c4c5") //  "#c3c4c5" 或 red
                    .onClick(()=>{
                      this.toCommentV2.likeFlag=!this.toCommentV2.likeFlag
                      this.toCommentV2.likeFlag?this.toCommentV2.likeNum++:this.toCommentV2.likeNum--
                    })

                  Text(this.toCommentV2.likeNum.toString())
                    .fontSize(12)
                    .margin({
                      left: 5
                    })
                }
              }
              .width('100%')
              .justifyContent(FlexAlign.SpaceBetween)

            }
            .alignItems(HorizontalAlign.Start)
            .layoutWeight(1)
            .padding({
              left: 15,
              right: 5
            })
          }
          .justifyContent(FlexAlign.Start)
          .alignItems(VerticalAlign.Top)
          .width('100%')
          .padding(15)
          // 分割线
          Divider()
            .strokeWidth(6)
            .color("#f4f5f6")

          // 回复数
          Text() {
            Span('回复')
            Span(`${this.replyListV2.length}`)
          }
          .padding(15)
          .fontWeight(700)
          .alignSelf(ItemAlign.Start)

          // 回复评论列表
          List() {
            ForEach(this.replyListV2, (item:ReplyItemV2,index:number) => {
              ListItem() {
                replayCard({
                  topCommentV2:item,
                  isLiked:()=>{
                    item.likeFlag=!item.likeFlag
                    item.likeFlag?item.likeNum++:item.likeNum--
                    this.replyListV2.splice(index,1,item)
                    // console.log('',this.replyListV2[index].likeFlag)
                    // console.log('',item.likeNum)
                  }
                })
              }
            })
          }
          .layoutWeight(1)
          .scrollBar(BarState.Off)
          .divider({ strokeWidth: 1, startMargin: 40, endMargin: 10 })

        }
        .width('100%')
        .backgroundColor(Color.White)
      }
      .layoutWeight(1)

      // 底部的发布评论区域
      Row() {
        TextInput({ placeholder: '回复',text:$$this.publishContent})
          .layoutWeight(1)
          .backgroundColor("#f4f5f6")
          .height(40)
        Text('发布')
          .fontColor("#6ecff0")
          .fontSize(14)
          .margin({
            left: 10
          })
          .onClick(()=>{
            this.replyListV2.push({
              id:1111,
              avatar: $r('app.media.startIcon'),
              author: '作者',
              content: this.publishContent,
              time: '',
              area: '上海',
              likeNum: 0,
              likeFlag: false
            })
          })
      }
      .padding(10)
      .backgroundColor(Color.White)
      .border({
        width: { top: 1 },
        color: "#f4f5f6"
      })

    }
    .height('100%')
  }
}

@Component
struct replayCard {
  @Prop topCommentV2:ReplyItemV2
  isLiked=()=>{}
  build() {
    Row() {
      Image(this.topCommentV2.avatar)
        .width(32)
        .height(32)
        .borderRadius(16)
      Column({ space: 10 }) {
        Text(this.topCommentV2.author)
          .fontWeight(600)
        Text(this.topCommentV2.content)
          .lineHeight(20)
          .fontSize(14)
          .fontColor("#565656")

        Row() {
          Text(`${new Date().getMonth()+1}-${new Date().getDate()} . IP属地 ${this.topCommentV2.area}`)
            .fontColor("#c3c4c5")
            .fontSize(12)
          Row() {
            Image($r("app.media.ic_like"))
              .width(14)
              .aspectRatio(1)
              .fillColor(this.topCommentV2.likeFlag?Color.Red:"#c3c4c5") //  "#c3c4c5" 或 red
              .onClick(()=>{
                this.isLiked()
              })

            Text(this.topCommentV2.likeNum.toString())
              .fontSize(12)
              .margin({
                left: 5
              })
          }
        }
        .width('100%')
        .justifyContent(FlexAlign.SpaceBetween)

      }
      .alignItems(HorizontalAlign.Start)
      .layoutWeight(1)
      .padding({
        left: 15,
        right: 5
      })
    }
    .justifyContent(FlexAlign.Start)
    .alignItems(VerticalAlign.Top)
    .width('100%')
    .padding(15)
  }
}