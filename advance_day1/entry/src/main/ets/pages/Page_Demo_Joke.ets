import { http } from '@kit.NetworkKit'

interface resutl{
  message:string,
  data:string[]
}

// const getJokeList=(list:string[],jokeNum:number):string[]=>{
//   const djRequest = http.createHttp()
//   djRequest.request(`https://api-vue-base.itheima.net/api/joke/list?num=${jokeNum}`)
//     .then((res)=>{
//     const newReq =JSON.parse(res.result.toString()) as resutl
//     list = newReq.data
//   })
//   return list
// }
/**
 * 1. 默认加载
 * 2. 下拉刷新
 * 3. 触底加载更多
 * 4. 点击返回顶部
 * */
@Entry
@Component
struct Day01_07_Jokes {
  djRequest = http.createHttp()
  @State jokeList:string[] = []
  newJokeList:string[] = []
  jokeNum: number = 5
  @State refreshing: boolean = true
  listScroller: Scroller = new Scroller()
  reqFlage:boolean = false

  build() {
    Refresh({
      // 开关刷新ui结构
      refreshing: $$this.refreshing
    }) {
      Column() {
        // 顶部
        this.HeaderBuilder()
        // 笑话列表
        Text('顶部')
          .position({x:'80%',y:'25%'})
          .zIndex(999)
          .backgroundColor('#ccc')
          .width(50)
          .height(30)
          .textAlign(TextAlign.Center)
          .borderRadius(5)
          .onClick(()=>{
            this.listScroller.scrollTo({xOffset:0,yOffset:0,animation:true})//支持动画的滚动
          })
        List({ space: 10, scroller: this.listScroller }) {
          ForEach(this.jokeList, (joke: string) => {
            ListItem() {
              Column({ space: 10 }) {
                Text(joke.slice(0,4))
                  .fontSize(20)
                  .fontWeight(600)
                Row({ space: 15 }) {
                  titleIcon({ icon: $r('app.media.ic_public_time'), info: '2024-1-1' })
                  titleIcon({ icon: $r('app.media.ic_public_read'), info: '阅读(6666)' })
                  titleIcon({ icon: $r('app.media.ic_public_comments'), info: '评论(123)'})
                }

                Text(joke)
                  .fontSize(15)
                  .fontColor(Color.Gray)
              }
              .width('100%')
              .alignItems(HorizontalAlign.Start)
              .padding(20)

            }
            .borderRadius(10)
            .backgroundColor(Color.White)
            .shadow({ radius: 2, color: Color.Gray })
          })

        }
        .padding(10)
        .layoutWeight(1)
        //若List中数据过少,没有实现滚动,这时会执行一次触底
        .onReachEnd(()=>{
          // 在数据加载过程中若速度过慢可能会多次触发触底,编写节流阀处理
          // 1.定义boolean变量标识
          // 2.获取数据时改值
          // 3.判断是否正在发送请求 正在获取则中断逻辑
          // 4.获取后改为初值
          if (this.reqFlage==true) return
          this.reqFlage =true
          this.getHttp(1)
            .then((res)=>{
              this.reqFlage = false
              const newReq =JSON.parse(res.result.toString()) as resutl
              this.newJokeList = newReq.data
            })
          this.newJokeList.forEach(element => {
            if (this.jokeList.includes(element)) {
              return
            }
            this.jokeList.push(element)
          })
        })
      }
      .width('100%')
      .height('100%')
      .backgroundColor('#f6f6f6')
    }
    .onRefreshing(()=>{

      this.getHttp(this.jokeNum)
        .then((res)=>{
        const newReq =JSON.parse(res.result.toString()) as resutl
        this.jokeList = newReq.data
        this.refreshing = false
      })
    })
  }

  private getHttp(jokeNum:number): Promise<http.HttpResponse> {
    return this.djRequest.request(`https://api-vue-base.itheima.net/api/joke/list?num=${jokeNum}`)
  }

  @Builder
  HeaderBuilder() {
    Row() {
      Image($r('app.media.ic_public_drawer_filled'))
        .width(25);
      Image($r('app.media.ic_public_joke_logo'))
        .width(30)
      Image($r('app.media.ic_public_search'))
        .width(30);
    }
    .width('100%')
    .justifyContent(FlexAlign.SpaceBetween)
    .height(60)
    .padding(10)
    .border({ width: { bottom: 2 }, color: '#f0f0f0' })
    .backgroundColor(Color.White)
  }
}

@Component
struct titleIcon {
  icon: ResourceStr = ''
  info: string = ''

  build() {
    Row() {
      Image(this.icon)
        .width(15)
        .fillColor(Color.Gray)
      Text(this.info)
        .fontSize(14)
        .fontColor(Color.Gray)
    }
  }
}