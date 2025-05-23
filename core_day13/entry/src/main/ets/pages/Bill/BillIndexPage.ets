import { router } from '@kit.ArkUI'
import { BillItem, BillType } from './Data/BillData'

PersistentStorage.persistProp<BillItem[]>('billList',[])
@Entry
@Component
struct BillIndexPage {
  @StorageLink ('billList')
  @Watch('fn')
  billList:BillItem[]=[]
  @State payMoney:number = 0
  @State inComMoney:number = 0
  @State restMoney:number = 0
  fn(){
    this.payMoney = this.billList.filter((item)=>item.type==BillType.Pay)
      .reduce((sum,item)=>sum-item.money,0)

    this.inComMoney = this.billList.filter(item=>item.type==BillType.InCome)
      .reduce((sum,item)=>sum+item.money,0)

    this.restMoney=this.payMoney+this.inComMoney
  }

  aboutToAppear(): void {
    this.fn()
  }

  build() {
    Stack({ alignContent: Alignment.BottomEnd }) {
      Column({ space: 10 }) {
        // 顶部区域
        Column({ space: 30 }) {
          // Text(JSON.stringify(this.billList))
          Text('账单合计')
            .fontSize(25)
            .width('100%')

          Row() {
            BillInfo({
              billName: '支出',
              billNum: this.payMoney.toFixed(2)
            })
            BillInfo({
              billName: '收入',
              billNum: this.inComMoney.toFixed(2)
            })
            BillInfo({
              billName: '结余',
              billNum: this.restMoney.toFixed(2)
            })

          }
        }
        .width('100%')
        .height(140)
        .backgroundImage($r('app.media.bill_title_bg'))
        .backgroundImageSize({ width: '100%', height: '100%' })
        .padding(20)
        .onClick(()=>{
        })

        // 账单区域
        List({ space: 10 }) {
          ForEach(this.billList,(item:BillItem,index:number)=>{
            ListItem() {
              DailyBillSection({listItem:item})
            }
            .swipeAction({
              end: this.delSection(item.id)
            })
          })
        }
        .width('100%')
        .layoutWeight(1)
        .scrollBar(BarState.Off)
      }
      .padding(10)
      .width('100%')

      // 添加按钮
      AddButton()
        .onClick(()=>{
          router.pushUrl({
            url:'pages/Bill/BillAddPage'
          })
        })
    }
    .height('100%')
    .backgroundColor('#f6f6f6')
  }

  // 删除标签
  @Builder
  delSection(index:number) {
    Image($r('app.media.ic_public_delete_filled'))
      .fillColor('#ec6073')
      .width(30)
      .margin(5)
      .onClick(()=>{
        this.billList=this.billList.filter((item)=>{
          return item.id!=index
        })
      })
  }
}

@Component
struct BillInfo {
  @Prop billName: string = ''
  @Prop billNum: string = ''
  build() {
    Column({ space: 10 }) {
      Text(this.billNum)
        .fontSize(20)
      Text(this.billName)
        .fontSize(12)
    }
    .layoutWeight(1)
    .alignItems(HorizontalAlign.Start)
  }
}

@Component
struct DailyBillSection {
  @State listItem:Partial<BillItem>={}
  build() {
    // 分割线
    Row({ space: 10 }) {
      Image(this.listItem.useFor?.icon)
        .width(20)
      Text(this.listItem.useFor?.name)
      Blank()
      Text(`${this.listItem.type==BillType.Pay?'-':'+'}${this.listItem.money?.toFixed(2)}`)//
        .fontColor(this.listItem.type==BillType.InCome ? Color.Green : '#ff8c7b')
      // 根据是否为支付调整颜色
      // 支付：#ff8c7b
      // 收入：Color.Black
    }
    .width('100%')
    .borderRadius(10)
    .padding(15)
    .backgroundColor(Color.White)

  }
}

@Component
struct AddButton {
  build() {
    Image($r('app.media.ic_public_add_filled'))
      .width(40)
      .fillColor('#8e939d')
      .padding(5)
      .borderRadius(20)
      .border({ width: 1, color: '#8e939d' })
      .translate({ x: -20, y: -20 })
      .backgroundColor('#f6f6f6')
  }
}

