import http from '@ohos.net.http';
import { text } from '@kit.ArkGraphics2D';

interface IResponse {
  message: string
  list: string[]
}


@Entry
@Component
struct Page_Demo_Area {
  @State message: string = '居住地选择';
  @State range: string[][] = []
  @State selected: number[] = [0, 0, 0]
  // 这部分信息的目的是渲染到页面上
  @State values: string[] = []
  // 请求对象
  req: http.HttpRequest = http.createHttp()
  @State showSheet: boolean = false



  aboutToAppear(): void {
  }

  build() {
    Column({ space: 10 }) {
      // 标题
      Text(this.message)
        .fontSize(30)
        .fontWeight(FontWeight.Bold)
        .textAlign(TextAlign.Center)
        .width('100%')
        .margin({ bottom: 20 })
      //
      Row({ space: 10 }) {
        Text('居住地:')
          .fontWeight(FontWeight.Bold)
        Text(this.values.length==0?'请选择居住地':this.values.join('/'))
          .layoutWeight(1)
          .fontColor(Color.Gray)
          .onClick(() => {
            this.showSheet = true
          })
        Image($r('sys.media.ohos_ic_public_arrow_right'))
          .width(20)
      }

      Divider()
      Blank()


    }
    .height('100%')
    .width('100%')
    .alignItems(HorizontalAlign.Start)
    .padding(20)
    .bindSheet($$this.showSheet, this.areaSheet(), {
      height: 300
    })
  }

  @Builder
  areaSheet() {
    Column() {
      // 带滚动的文本选择器
      TextPicker({
        //选择器的数据选择列表
        // range:[{text:string,children:[{text:string,children:[...]}]}]
        range: [
        // 数据必须有一个text 描述数据
        // 可以有或者没有一个 children  表示text的下级数据
          {
            text: '辽宁省',
            children: [
              {
                text: '沈阳市',
                children: [
                  { text: '沈河区' }, { text: '和平区' }, { text: '浑南区' }
                ]
              },
              {
                text: '大连市',
                children: [
                  { text: '中山区' }, { text: '金州区' }, { text: '长海县' }
                ]
              }]
          },
          {
            text: '吉林省',
            children: [
              {
                text: '长春市', children: [
                { text: '南关区' }, { text: '宽城区' }, { text: '朝阳区' }]
              },
              {
                text: '四平市', children: [
                { text: '铁西区' }, { text: '铁东区' }, { text: '梨树县' }]
              }]
          },
          {
            text: '黑龙江省',
            children: [{ text: '哈尔滨市', children: [{ text: '道里区' }, { text: '道外区' }, { text: '南岗区' }] },
              { text: '牡丹江市', children: [{ text: '东安区' }, { text: '西安区' }, { text: '爱民区' }] }]
          },
          {text:'河南省',children:[{
            text:'郑州市',children:[
              {text:'a区'},{text:'b区'},{text:'c区'},
            ]
          },
            {text:'洛阳市',children:[{text:'e区'},{text:'f区'},{text:'g区'}]}]}
        ],
        selected: $$this.selected,//指定选中项
        // value: $$this.values //
      })
        .canLoop(false) //是否可以循环
        //不同于多选框的onchange事件,该事件可以拿到值
        .onChange((value)=>{
          this.values = value as string[]
        })
    }
  }
}