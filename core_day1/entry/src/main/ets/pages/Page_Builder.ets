interface card{
  imgUrl:string,
  title:string,
  dialog:string
}
// 可以抽取全局
// @Builder
//  function cardStyle(){
//   Column({ space: 10 }) {
//     Image($r('app.media.ic_reuse_01'))
//       .width('80%')
//     Text('阿里拍卖')
//
//   }
//   .width('25%')
//   .onClick(() => {
//     AlertDialog.show({
//       message: '点了 阿里拍卖'
//     })
//   })
// }
@Entry
@Component
struct Page_Builder {
  @State cardImp:card[] = [
    {imgUrl:'1',title:'阿里拍卖',dialog:'点了阿里拍卖'},
    {imgUrl:'2',title:'菜鸟',dialog:'点了菜鸟'},
    {imgUrl:'3',title:'芭芭农场',dialog:'点了芭芭农场'},
    {imgUrl:'4',title:'阿里药房',dialog:'点了阿里药房'},
  ]
  // Builder抽取结构+样式+事件
  // 可以抽取结构内
  @Builder
  cardStyle(imgUrl:string,title:string,dialog:string){
    Column({ space: 10 }) {
      Image($r(`app.media.ic_reuse_0${imgUrl}`))
        .width('80%')
      Text(title)

    }
    .width('25%')
    .onClick(() => {
      // 弹窗
      AlertDialog.show({message:dialog})
    })
  }

  build() {
    Column(){
      Row() {
        ForEach(this.cardImp,(item:card)=>{
          this.cardStyle(item.imgUrl,item.title,item.dialog)
        })
      }
    }
    .height('100%')
    .width('100%')
  }
}