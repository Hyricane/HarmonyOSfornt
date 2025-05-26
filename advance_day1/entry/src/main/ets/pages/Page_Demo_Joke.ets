import { http } from '@kit.NetworkKit'

interface resutl{
  message:string,
  data:string[]
}

const getJokeList=(list:string[],jokeNum:number):string[]=>{
  const djRequest = http.createHttp()
  djRequest.request(`https://api-vue-base.itheima.net/api/joke/list?num=${jokeNum}`)
    .then((res)=>{
    const newReq =JSON.parse(res.result.toString()) as resutl
    list = newReq.data
  })
  return list
}
/**
 * 1. 默认加载
 * 2. 下拉刷新
 * 3. 触底加载更多
 * 4. 点击返回顶部
 * */
@Entry
@Component
struct Day01_07_Jokes {
  @State jokeList:string[] = []
  @State newJokeList:string[] = []
  jokeNum: number = 5
  @State refreshing: boolean = true
  aboutToAppear(): void {
    getJokeList(this.jokeList,5)
  }
  listScroller: Scroller = new Scroller()

  build() {
    Refresh({ refreshing: $$this.refreshing }) {
      Column() {
        // 顶部
        this.HeaderBuilder()
        // 笑话列表
        List({ space: 10, scroller: this.listScroller }) {
          ForEach(this.jokeList, (joke: string) => {
            ListItem() {
              Column({ space: 10 }) {
                Text(joke.slice(0,4))
                  .fontSize(20)
                  .fontWeight(600)
                Row({ space: 15 }) {
                  titleIcon({ icon: $r('sys.media.ohos_ic_normal_white_grid_calendar'), info: '2024-1-1' })
                  titleIcon({ icon: $r('sys.media.wifi_router_fill'), info: '阅读(6666)' })
                  titleIcon({ icon: $r('sys.media.ohos_user_auth_icon_face'), info: '评论(123)' })
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
        .onReachEnd(()=>{
          const tempList=getJokeList(this.newJokeList,1)
          // AlertDialog.show(({message:JSON.stringify(tempList)}))
          tempList.forEach(element => {
            this.jokeList.push(element)
          })
        })
      }
      .width('100%')
      .height('100%')
      .backgroundColor('#f6f6f6')
    }
    .onRefreshing(()=>{
      const djRequest = http.createHttp()
      djRequest.request(`https://api-vue-base.itheima.net/api/joke/list?num=${this.jokeNum}`).then((res)=>{
        const newReq =JSON.parse(res.result.toString()) as resutl
        this.jokeList = newReq.data
        this.refreshing = false
      })
    })
  }

  @Builder
  HeaderBuilder() {
    Row() {
      Image($r('sys.media.ohos_ic_public_select_all'))
        .width(25);

      Image($r('sys.media.ohos_ic_public_remove'))
        .width(30)

      Image($r('sys.media.ohos_ic_public_web'))
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