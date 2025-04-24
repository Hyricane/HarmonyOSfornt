@Entry
@Component
struct Page_Preview_Click {
  @State
  msg : string = '欢迎'
 build() {
   Column(){
     Row(){
       Text(this.msg)
         //点击事件
         // .onClick(()=>{})
         // 点击时更新状态
         .onClick(()=>{
           this.msg = '来到响应式'
         })
     }
   }
 }
}