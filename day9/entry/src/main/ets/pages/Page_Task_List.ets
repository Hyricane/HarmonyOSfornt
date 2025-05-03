import { Type } from '@kit.ArkUI'

interface TaskList{
  title:string,
  Complete:string,
  isComplete:boolean,
  comBtnColor:string,
  del:string
}
@Entry
@Component
struct Page_Task_List {
  @State taList:TaskList[]=[
    {title:'跑步10公里',Complete:'未完成',isComplete:false,comBtnColor:'',del:'删除'},
    {title:'跳绳100下',Complete:'未完成',isComplete:false,comBtnColor:'',del:'删除'},
    {title:'游泳10公里',Complete:'未完成',isComplete:false,comBtnColor:'',del:'删除'}
  ]

  build() {
    Column(){
      ForEach(this.taList,(item:TaskList,index:number)=>{
        Row(){
          Text(item.title)
            .decoration(item.isComplete?{type:TextDecorationType.LineThrough}:{type:TextDecorationType.None})
          Row({space:5}){
            Button(item.Complete)
              .backgroundColor(item.comBtnColor)
              .onClick(()=>{
                this.taList[index]={
                  comBtnColor:'#808080',
                  title:item.title,
                  Complete:'已完成',
                  isComplete:true,
                  del:item.del,
                }
              })
            Button(item.del)
              .backgroundColor('#7767E7')
              .onClick(()=>{
                this.taList.splice(index,1)
              })
          }
        }
        .margin({bottom:30})
        .width('100%')
        .justifyContent(FlexAlign.SpaceBetween)
        .padding({left:10,right:10})
      })
    }
    .width('100%')
    .height('100%')
  }
}