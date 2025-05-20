//组件的生命周期钩子
//在组件生命周期特殊节点自动激活函数
//组件即将生成
// .aboutToAppear():void{}
//组件即将消失
import { router } from '@kit.ArkUI';

// .aboutToDisappear():void{}
@Entry
@Component
struct Page_Life_1 {
  @State isShow: boolean = true;

  //组件创建钩子
  build() {
    Column() {
      if (this.isShow==true) {
        HelloComp()
          .onClick(() => {
            this.isShow = !this.isShow
          })
      }
      Button('跳转页面')
        .onClick(()=>{
          router.pushUrl({url:'pages/life/Page_Life_2'})
        })
    }
    .height('100%')
    .width('100%')
  }
}

@Component
struct HelloComp {
  aboutToAppear(): void {
    AlertDialog.show({message:'组件即将生成,生命周期钩子激活'})
  }
  aboutToDisappear(): void {
    AlertDialog.show({message:'组件即将消失,生命周期钩子激活'})
  }
  build() {
    Text('hello')
  }
}