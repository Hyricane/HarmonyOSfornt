@Component
struct RowComp {
  item_row:string=''
  delFn=()=>{}
  build() {
    Row({ space: 10 }) {
      Text(this.item_row)
      Image($r('app.media.ic_public_cancel'))
        .width(15)
        .fillColor(Color.Gray)
        .onClick(() => {
          // console.log('事件激活')
          this.delFn()
        })
    }
    .backgroundColor('#ebeff3')
    .padding({ top: 5, bottom: 5, left: 10, right: 10 })
    .borderRadius(5)
    .margin({ right: 8, bottom: 8 })
  }
}

@Component
struct SearchComp {
  //获取输入值
  @State searchContent_comp:string = ''
  searchFn=(search:string)=>{}
  build() {
    Row({ space: 5 }) {
      Image($r('app.media.ic_public_arrow_left'))
        .width(30)
      TextInput({text:$$this.searchContent_comp})
        .layoutWeight(1)
      Button('搜索')
        .backgroundColor('#ef3339')
        .type(ButtonType.Normal)
        .borderRadius(10)
        .onClick(()=>{
          if (this.searchContent_comp.trim()==''){return}
          this.searchFn(this.searchContent_comp)
          this.searchContent_comp=''
        })
    }
    .width('100%')
    .padding(5)
  }
}

@Entry
@Component
struct Page03_Demo_History {
  // 搜索历史，修改之后要更新 UI，状态变量
  @State historyList: string[] = [
    '手机',
    '跑鞋',
    '手表',
    '耳机',
    '电视',
    '笔记本',
    '厨房电器',
    '户外装备',
    '女装',
    '男装',
    '玩具',
    '美妆',
    '保健',
    '宠物用品',
    '家居',
    '办公椅',
    '相机',
    '手袋',
    '墨镜',
    '背包',
    '瑜伽垫',
    '咖啡机',
    '空气净化',
    '游戏机',
    '书籍',
    '零食',
    '绿植'
  ]

  build() {
    Column() {
      // 顶部的输入框区域
      SearchComp({
        searchFn:(content:string)=>{
          this.historyList.unshift(content)
        }
      })

      Divider()

      // 搜索历史-标题
      Row() {
        Text('最近搜索')
        Image($r('app.media.ic_public_delete'))
          .width(20)
      }
      .width('100%')
      .padding(5)
      .justifyContent(FlexAlign.SpaceBetween)

      // 搜索历史-列表
      Flex({ wrap: FlexWrap.Wrap }) {
        ForEach(this.historyList, (item: string, index: number) => {
          RowComp({
            item_row:item,
            delFn:()=>{this.historyList.splice(index,1)}
          })
        })


      }
      .padding(10)

    }
    .width('100%')
    .height('100%')
  }
}