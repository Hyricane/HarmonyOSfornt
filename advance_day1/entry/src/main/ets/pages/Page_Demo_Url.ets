import http from '@ohos.net.http';
import { request } from '@kit.BasicServicesKit';


interface NewResponse {
  message: string
  data: string[]
}

const req = http.createHttp()

@Entry
@Component
struct Day01_03_QueryParams {
  @State pname: string = '';
  @State jokeNum: string = ''
  @State jokes: string[] = []
  @State cities: string[] = []

  build() {
    Column() {
      Column({ space: 10 }) {
        Text('开心一笑')
          .fontSize(30)
        TextInput({ placeholder: '输入笑话条数', text: $$this.jokeNum })
          .type(InputType.Number)
          // 提交数据时激活
          .onSubmit(() => {
            // url：https://api-vue-base.itheima.net/api/joke/list
            // 参数: num 笑话数量
            req.request(`https://api-vue-base.itheima.net/api/joke/list?num=${this.jokeNum}`)
              .then((obj)=>{
                const newReq =JSON.parse(obj.result.toString()) as NewResponse
                this.jokes=newReq.data
              })
            AlertDialog.show({
              message: '输入的数值是:' + this.jokeNum
            })
          })
        ForEach(this.jokes, (joke: string) => {
          Text(joke)
        })
      }
      .layoutWeight(1)
      .width('100%')
      .padding(10)

      Divider()
        .color(Color.Pink)
        .strokeWidth(3)
      Column({ space: 10 }) {
        Text('省份城市查询')
          .fontSize(30)
        TextInput({ placeholder: '请输入查询的省份名', text: $$this.pname })// 键盘事件
          .onSubmit(e => {
            // url：https://hmajax.itheima.net/api/city
            // 参数: pname 省份名
            req.request('https://hmajax.itheima.net/api/city?pname='+encodeURIComponent(this.pname))
              .then((obj)=>{
                const city = JSON.parse(obj.result.toString()) as NewResponse
                this.cities = city.data
              })
            AlertDialog.show({
              message: '输入的省份名是:' + this.pname
            })
          })
        Grid() {
          ForEach(this.cities, (city: string) => {
            GridItem() {
              Text(city)
            }
            .border({ width: 1 })
          })
        }
        .columnsTemplate('1fr '.repeat(4))
        .columnsGap(10)
        .rowsGap(10)
      }
      .layoutWeight(1)
      .width('100%')
      .padding(10)
    }
    .height('100%')
  }
}