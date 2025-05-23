import { router } from '@kit.ArkUI'
import {
  BillItem,
  BillType, inComBillCategoryList, payBillCategoryList, UseForCategory, UseForItem } from './Data/BillData'


@Entry
@Component
struct BillAddPage {
  @State selIndex:BillType=BillType.Pay
  //使用整个对象判断是否点击,方便后续获取点击对象的数据回传给Index界面
  @State selItem:Partial<UseForItem>={}
  @State money:string = ''
  @StorageLink('billList') billList:BillItem[]=[]
  build() {
    Navigation() {
      Column() {
        // 切换订单类型
        this.switchBillTypeBuilder()

        // 输入框区域
        Stack({ alignContent: Alignment.End }) {
          Row() {
            // 输入框
            TextInput({ placeholder: '0.00', text:$$this.money })
              .layoutWeight(1)
              .textAlign(TextAlign.End)
              .backgroundColor(Color.Transparent)
              .fontColor(Color.Gray)
              .type(InputType.NUMBER_DECIMAL)// 只能输入数值
              .fontSize(20)
              .placeholderFont({ size: 20 })
              .placeholderColor('#d9d9d9')
              .padding({ right: 20 })
          }
          .width('100%')

          Text('¥')
            .fontSize(25)
        }
        .backgroundColor(Color.White)
        .width('80%')
        .margin(20)
        .borderRadius(10)
        .border({ width: 1, color: Color.Gray })
        .padding({ left: 10, right: 10 })

        // 订单
        Column({ space: 10 }) {
          ForEach(this.selIndex==BillType.Pay?payBillCategoryList:inComBillCategoryList,(item:UseForCategory,index)=>{
          Column({ space: 20 }) {
              Text(item.title)
                .alignSelf(ItemAlign.Start)
                .fontColor(Color.Gray)
                .fontSize(14)
                Row({ space: 10 }) {
                  ForEach(item.items,(item_in:UseForItem,index)=>{
                  IconCom({
                    title:item_in.name,
                    icon:item_in.icon
                  })
                    .borderRadius(5)// 选中的高亮样式
                    .border(this.selItem.id==item_in.id?{width: 1, color: '#5b8161' }:{width: 1, color: Color.Transparent })
                    .backgroundColor(this.selItem.id==item_in.id?'#dcf1e4':Color.Transparent)
                    .onClick(()=>{
                      this.selItem = item_in
                    })
                  })
                }
                .alignSelf(ItemAlign.Start)
          }
          .width('100%')
          })
        }
        .padding(15)
        .width('100%')
        .borderRadius(25)
        .height(500)
        .backgroundColor(Color.White)

        Blank()
        Button('保 存')
          .width('80%')
          .type(ButtonType.Capsule)
          .backgroundColor(Color.Transparent)
          .fontColor('#5b8161')
          .border({ width: 1, color: '#5b8161' })
          .margin(10)
          .onClick(()=>{
            if (this.money=='') {
              AlertDialog.show({message:'请输入金额'})
              return
            }
            if (this.selItem.id==undefined) {
              AlertDialog.show({message:'请选择类别'})
              return
            }
            this.billList.unshift({
              id:Date.now(),
              type:this.selIndex,
              money:parseFloat(this.money),
              useFor:this.selItem as UseForItem
            })
            router.pushUrl({
              url:'pages/Bill/BillIndexPage'
            })
          })
        // Text(JSON.stringify(this.billList))
      }
      .height('100%')

    }
    .mode(NavigationMode.Stack)
    .title('记一笔')
    .titleMode(NavigationTitleMode.Mini)
    .backButtonIcon($r('app.media.ic_public_arrow_left'))
    .backgroundColor('#d7f1e2')
  }

  @Builder
  switchBillTypeBuilder() {
    // 切换订单类型
    Row({ space: 15 }) {
      // 选中时 文本白色，背景黑色
      Text('支出')
        .tabTextExtend()
        .backgroundColor(this.selIndex==BillType.Pay?Color.Black:Color.White)
        .fontColor(this.selIndex==BillType.Pay?Color.White:Color.Black)
        .onClick(()=>{
          if (this.selIndex!=BillType.Pay) {
            this.selItem={}
          }
          this.selIndex = BillType.Pay
        })


      Text('收入')
        .tabTextExtend()
        .backgroundColor(this.selIndex==BillType.InCome?Color.Black:Color.White)
        .fontColor(this.selIndex==BillType.InCome?Color.White:Color.Black)
        .onClick(()=>{
          if (this.selIndex!=BillType.InCome) {
            this.selItem={}
          }
          this.selIndex = BillType.InCome
        })
    }
  }
}

@Extend(Text)
function tabTextExtend() {
  .borderRadius(15)
  .width(50)
  .height(30)
  .textAlign(TextAlign.Center)
  .fontSize(14)
}

@Component
struct IconCom {
  @Prop title:string
  @Prop icon:ResourceStr
  build() {
    Column({ space: 5 }) {
      Image(this.icon)
        .width(20)
      Text(this.title)
        .fontSize(12)
        .width(48)
        .textAlign(TextAlign.Center)
        .onClick(()=>{
        })
    }
    .padding(5)
  }
}