import * as carData from  '../data/Task_Car_Data'
@Entry
@Component
struct Page11_carHome {
  // 时间
  date : Date = new Date
  // 筛选条件
  filterList = ['全部', '紧凑型车', '微型车', '小型车', '中型车']
  @State filterCurrentIndex:number = 0
  // 排序条件
  sortList = ['热度', '价格', '销量']
  @State sortCurrentIndex:number = 0
  // 临时数组储存数据
  @State tempCarList:carData.Car[]=carData.carList
  build() {
    Column() {
      // 顶部区域
      Stack() {
        Text('汽车之家排行榜')
          .fontSize(18)
        Row({ space: 5 }) {
          Image($r('app.media.ic_public_arrow_left'))
            .width(25)
          Blank()
          Image($r('app.media.ic_public_share'))
            .width(25)
          Image($r('app.media.ic_public_question'))
            .width(25)
        }
        .width('100%')
        .padding(10)
      }
      // tag区域
      Row({space:10}){
        ForEach(this.filterList,(filterItem:string,filterIndex:number)=>{
          this.tabTextBuilder(filterItem,filterIndex)
        })
      }
      // 列表区域
      Divider()
        .strokeWidth(1)
        .margin({top:10,bottom:10})
      Column(){
        // 头部
        Row(){
          Text(`${this.date.getFullYear()}年${this.date.getMonth()+1}月${this.date.getDate()}日`)
          Row({space:5}){
            ForEach(this.sortList,(soutItem:string,soutIndex:number)=>{
              Text(soutItem)
                .fontColor(this.sortCurrentIndex==soutIndex?'#DD2217':Color.Black)
                .fontWeight(this.sortCurrentIndex==soutIndex?600:0)
                .onClick(()=>{
                  this.sortCurrentIndex = soutIndex
                  switch (soutIndex){
                    case 0:
                      this.tempCarList.sort((a,b)=>{
                        return b.rank-a.rank
                      })
                    break
                    case 1:
                      this.tempCarList.sort((a,b)=>{
                        return b.max_price-a.max_price
                      })
                    break
                    case 2:
                      this.tempCarList.sort((a,b)=>{
                        return b.count-a.count
                      })
                      console.log(JSON.stringify(this.tempCarList))
                    break
                    default :
                  }
                })
            })
          }
        }
        .margin({bottom:10})
        .justifyContent(FlexAlign.SpaceBetween)
        .width('100%')
        List({space:10}){
          ForEach(this.tempCarList,(carListitem:carData.Car,carListindex)=>{
            ListItem(){
              this.carListItem(carListitem.image,carListitem.series_name,carListitem.min_price,carListitem.max_price,carListitem.count,carListindex)
            }
          })
        }
        .scrollBar(BarState.Off)
      }
      .padding({left:20,right:20})
      .layoutWeight(1)
    }
    .width('100%')
    .height('100%')
  }

  @Builder
  carListItem(carImg:ResourceStr,carName:string,minPrice:number,maxPrice:number,count:number,listIndex:number) {
    Row() {
      if (listIndex>2){
        Text((listIndex+1).toString())
          .fontWeight(FontWeight.Bold)
          .fontSize(20)
          .fontColor(Color.Gray)
      }else if (listIndex==0){
        Image($r('app.media.ic_homework_first'))
          .width(35)
          .aspectRatio(1)
      }
      else if (listIndex==1){
        Image($r('app.media.ic_homework_second'))
          .width(35)
          .aspectRatio(1)
      }
      else if (listIndex==2){
        Image($r('app.media.ic_homework_third'))
          .width(35)
          .aspectRatio(1)
      }
      //汽车图片
      Image(carImg)
        .width(100)
      Column() {
        // 车名
        Text(carName)
        // 价格
        Text(`${minPrice}-${maxPrice}万`)
          .fontSize(12)
          .fontColor('#D5936D')
      }
      .alignItems(HorizontalAlign.Start)
      .justifyContent(FlexAlign.SpaceBetween)

      Column({ space: 3 }) {
        // 销量
        Text((count).toString())
          .fontWeight(600)
        Text('全国销量')
          .fontSize(10)
          .fontColor(Color.Gray)
        Button('询底价')
          .padding(0)
          .fontSize(10)
          .borderRadius(5)
          .width(50)
          .height(30)
      }
    }
    .justifyContent(FlexAlign.SpaceBetween)
    .width('100%')
  }

  @Builder
  tabTextBuilder(item_Builder: string,index:number) {
    Text(item_Builder)
      .padding(5)
      .backgroundColor('#F6F6F6')
      .borderRadius(5)
      .fontColor(this.filterCurrentIndex == index ?'#DD2217':'#8A8A8A')
      .fontWeight(this.filterCurrentIndex == index ?600:0)
      .onClick(()=>{
        this.filterCurrentIndex = index
        this.sortCurrentIndex=0
        if (index==0){
          this.tempCarList = this.tempCarList
        }else {
          // 过滤筛选
          this.tempCarList=carData.carList.filter((item_filter)=>{return item_filter.type == index})
        }

      })
  }
}