import axios, { AxiosResponse } from '@ohos/axios';
// axios({
//   url:'https://api-vue-base.itheima.net/api/joke '
// })
//   //AxiosResponse axios中封装好的类型
//   .then((res:AxiosResponse)=>{
//     //res.data是axios返回的字段
//     AlertDialog.show({message:res.data})
//   })
interface CityType{
  message:string
  list:string[]
}
axios({
  url:'https://hmajax.itheima.net/api/area',
  // 可以直接传中文,但需要在params对象中
  params:{pname:'辽宁省',cname:'大连市'}
}).then((res:AxiosResponse<CityType>)=>{
  AlertDialog.show({message:res.data.list.join('|')})
})

@Entry
@Component
struct Page_axios {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_axiosHelloWorld')
        .fontSize($r('app.float.page_text_font_size'))
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
        .onClick(() => {
        })
    }
    .height('100%')
    .width('100%')
  }
}