import { http } from "@kit.NetworkKit"
import { promptAction } from "@kit.ArkUI"
export interface ApifoxModel {
  /**
   * 响应数据
   */
  data: Data;
  /**
   * 响应消息
   */
  message: string;
}

/**
 * 响应数据
 */
export interface Data {
  /**
   * 响应对象
   */
  info: Info;
  /**
   * 响应数据类型
   */
  type: number;
}

/**
 * 响应对象
 */
export interface Info {
  /**
   * 机器人返回的话语
   */
  text: string;
}

export class ResultClass {
  result: number = 0
  content: string = ""
}

export class MessageItem {
  message: string = "" // 用户名称
  self: boolean = false // 是不是用户自己
  id: number = 0 // 唯一的id
}

const chatReq = http.createHttp()

@Entry
@Component
struct ChatPage {
  @State
  contentStr: string = ""
  @State
  messList: MessageItem[] = []
  build() {
    Stack({ alignContent: Alignment.Bottom }) {
      Column() {
        Row() {
          Text("🙉 知心姐姐")
            .fontSize(18)
        }
        .width('100%')
        .height(50)
        .justifyContent(FlexAlign.Center)

        List({ space: 20 }) {
          ForEach(this.messList, (item: MessageItem) => {
            ListItem() {
              // 一左一右
              MessageCom({
                item: item
              })
            }
          })
        }
        .padding({
          bottom: 80
        })
        .layoutWeight(1)
      }
      .height('100%')

      // 消息列表
      Row({ space: 20 }) {
        TextInput({ text: $$this.contentStr })
          .layoutWeight(1)
          .backgroundColor(Color.White)
          .borderRadius(2)
          .height(40)

        Button() {
          Row() {
            Text("发送")
              .fontColor("#fff")
              .onClick(()=>{
                //非空判断
                if (this.contentStr=='') {
                  promptAction.showToast({message:'发送消息不能为空'})
                  return
                }
                this.messList.push({
                  id:Date.now(),
                  self:true,
                  message:this.contentStr
                })
                chatReq.request('https://hmajax.itheima.net/api/robot?spoken='+encodeURIComponent(this.contentStr))
                  .then(res=>{
                    const putResponds = (JSON.parse(res.result as string) as ApifoxModel).data
                    this.messList.push({
                      id:Date.now(),
                      self:false,
                      message:putResponds.info.text
                    })
                  })
                this.contentStr = ''
              })
          }
        }
        .height(30)
        .width(60)
      }
      .width('100%')
      .backgroundColor('#f6f6f6')
      .height(70)
      .padding({
        left: 10,
        right: 10
      })
    }
    .backgroundColor('#ededed')
    .height('100%')
  }
}

@Component
struct MessageCom {
  item: Partial<MessageItem> = {}
  @State
  showMenu: boolean = false

  build() {
    Row() {
      Image(this.item.self ? $r('app.media.ic_public_male') : $r('app.media.ic_public_female'))
        .height(40)
        .width(40)
        .borderRadius(6)
      Row() {
        Text(this.item.message)
          .backgroundColor(this.item.self ? "#8bec73" : Color.White)
          .fontColor("#0c2803")
          .padding(10)
          .lineHeight(24)
          .margin({
            left: 10,
            right: 10
          })
          .borderRadius(5)


      }
      .layoutWeight(5)
      .justifyContent(this.item.self ? FlexAlign.End : FlexAlign.Start)

      Text()
        .layoutWeight(1)
    }
    .width('100%')
    .padding({
      left: 20,
      right: 20
    })
    .alignItems(VerticalAlign.Top)
    .direction(this.item.self ? Direction.Rtl : Direction.Ltr)
  }
}




