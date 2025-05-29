import { http } from '@kit.NetworkKit'

export interface ApifoxModel {
  /**
   * 响应数据
   */
  data: Data;
  /**
   * 响应消息
   */
  message: string;
}

/**
 * 响应数据
 */
export interface Data {
  /**
   * 顶级分类下属二级分类数组
   */
  children: Child[];
  /**
   * 顶级分类id
   */
  id: string;
  /**
   * 顶级分类名字
   */
  name: string;
  /**
   * 顶级分类图片
   */
  picture: string;
}

export interface Child {
  /**
   * 二级分类id
   */
  id: string;

  /**
   * 二级分类名字
   */
  name: string;

  /**
   * 二级分类图片
   */
  picture: string;
}

const req = http.createHttp()
  const demo_p1 = req.request('https://hmajax.itheima.net/api/category/sub?id=1005000')
  const demo_p2 = req.request('https://hmajax.itheima.net/api/category/sub?id=1005002')
  const demo_p3 = req.request('https://hmajax.itheima.net/api/category/sub?id=1010000')
Promise.allSettled([demo_p1,demo_p2,demo_p3])
  .then((res)=>{
    const newArr = res.map<ApifoxModel>(item=>{
      if (item.status=='fulfilled') {
        return JSON.parse(item.value.result as string) as ApifoxModel
      }else {
        return {} as  ApifoxModel
      }
    })
  })
@Entry
@Component
struct Page_Demo_promiseSettle {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_Demo_promiseSettleHelloWorld')
        .fontSize($r('app.float.page_text_font_size'))
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
        .onClick(() => {
          this.message = 'Welcome';
        })
    }
    .height('100%')
    .width('100%')
  }
}