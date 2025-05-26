import { http } from '@kit.NetworkKit'

interface NewsResponse {
  message: string
  data: News[]
}

interface News {
  id: number
  title: string
  source: string
  cmtcount: number
  img: string
  time: string
}
@Entry
@Component
struct Page_Demo {
  @State getRes:NewsResponse[] = []
  aboutToAppear(): void {
    // 1.创建http
    const request = http.createHttp()
    // 2.请求数据
    request.request('https://hmajax.itheima.net/api/news').then((res)=>{
      const newResponds = JSON.parse(res.result.toString()) as NewsResponse
      this.newsList = newResponds.data
    })
  }
  @State newsList: News[] = [{
    "id": 1,
    "title": "5G渗透率持续提升，创新业务快速成长",
    "source": "新京报经济新闻",
    "cmtcount": 58,
    "img": "http://ajax-api.itheima.net/images/0.webp",
    "time": "2222-10-28 11:50:28"
  }]

  build() {
    List({ space: 10 }) {
      ForEach(this.newsList, (news: News) => {
        ListItem() {
          Row({ space: 10 }) {
            Column() {
              Text(news.title)
                .fontSize(16)
                .textOverflow({ overflow: TextOverflow.Ellipsis })
                .maxLines(3)

              Row({ space: 10 }) {
                Text(news.source)
                  .textExtend()
                Text(`${news.cmtcount}评论`)
                  .textExtend()
                Blank()

                Text(news.time.split(' ')[0])
                  .textExtend()
              }
              .width('100%')

            }
            .justifyContent(FlexAlign.SpaceBetween)
            .alignItems(HorizontalAlign.Start)
            .height(80)
            .layoutWeight(1)

            Image(news.img)
              .width(110)
              .height(80)
              .borderRadius(10)
          }
          .padding(10)
        }
        .backgroundColor(Color.White)
      })

    }
    .padding(10)
    .height('100%')
    .backgroundColor('#f0f0f0')

  }
}

@Extend(Text)
function textExtend() {
  .fontColor(Color.Gray)
  .fontSize(12)
  .textAlign(TextAlign.Start)
}
