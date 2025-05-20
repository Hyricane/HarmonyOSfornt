import { Food,FoodList} from '../../XCFData/FoodData';
import { router } from '@kit.ArkUI';

interface categoryObj{
  categoryTitle:string,
  categoryId:string
}

@Entry
@Component
struct CategoryPage {
  // 渲染食物列表
  @State foods: Food[] = []
  @State categoryObj:categoryObj={
    categoryTitle:'',
    categoryId:''
  }
  aboutToAppear(): void {
    // 接收路由传递而来的数据
    this.categoryObj =  router.getParams() as categoryObj
    this.foods = FoodList.filter((item)=>{
        return item.categoryId== this.categoryObj.categoryId
    })
  }

  build() {
    Column() {
      // 顶部
      TopCom({
        categoryTitle:this.categoryObj.categoryTitle,
        titleCover:this.foods[0].cover
      })

      // 列表
      List({ space: 20 }) {
        ForEach(this.foods, (food: Food) => {
          ListItem() {
            Row() {
              Image(food.cover)
                .width(150)
                .height(110)
                .borderRadius(10)
              Column() {
                Text(food.title)
                Text() {
                  Span(`评分:${food.score}    `)
                  Span(`${food.count} 人做过`)
                }
                .fontSize(12)

                Row({ space: 10 }) {
                  // 作者头像
                  Image(food.author.avatar)
                    .width(20)
                    .height(20)
                    .borderRadius(10)
                  // 作者昵称
                  Text(food.author.nickname)
                    .fontSize(10)
                    .fontColor(Color.Gray)
                }
              }
              .alignItems(HorizontalAlign.Start)
              .justifyContent(FlexAlign.SpaceBetween)
              .layoutWeight(1)
              .padding({ top: 5, bottom: 5, left: 10 })
              .height(110)
            }
          }
        })
      }
      .padding(20)
      .layoutWeight(1)
    }
    .height('100%')
  }
}

@Component
struct TopCom {
  @Prop categoryTitle:string
  @Prop titleCover:string
  build() {
    Stack() {
      // 顶部封面
      Image(this.titleCover)
        .height('100%')
        .width('100%')
      Column() {
        // 返回按钮
        Image($r('app.media.ic_public_arrow_left'))
          .fillColor(Color.White)
          .width(30)
          .onClick(()=>{
            router.back()
          })

        // 顶部标题
        Text(this.categoryTitle)
          .fontColor(Color.White)
          .fontSize(30)
          // .sharedTransition(this.categoryTitle,{duration:500})
      }
      .justifyContent(FlexAlign.SpaceAround)
      .alignItems(HorizontalAlign.Start)
      .padding(20)
      .backgroundColor('rgba(0,0,0,0.4)')
      .width('100%')
      .height('100%')
    }
    .height(220)
  }
}