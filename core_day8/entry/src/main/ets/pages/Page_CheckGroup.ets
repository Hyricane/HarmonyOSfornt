@Entry
@Component
struct Page_CheckGroup  {
  @State selectArr : string[] = []
  fruits:string[] = ['西瓜','西红柿','西兰花','西葫芦']
  build() {
    Column(){
      Row(){
        // Checkbox()分组:CheckboxGroup({group:'组名'})
        // 对应的Checkbox()中也要添加group属性
        CheckboxGroup({group:'A'})
          // 复选框选中变化时激活函数
          .onChange((obj)=>{
            // 返回name和status组成的对象
            // name数组获取被选中的checkbox中的name
            //当name数组获得所有checkbox的name时,status=2,部分时=1,无时=0
            this.selectArr = obj.name
          })
        Text('全选')
      }
      Column(){
        ForEach(this.fruits,(item:string,index:number)=>{
          Row(){
            Checkbox({group:'A',name:item})
            Text(item)
          }
        })
        Text('选中的是'+this.selectArr.join('-'))
      }
      .padding({left:20})
      .alignItems(HorizontalAlign.Start)
    }.padding(20)
    .alignItems(HorizontalAlign.Start)

  }
}