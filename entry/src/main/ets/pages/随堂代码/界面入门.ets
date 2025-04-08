
@Entry
@Component
struct Index {
  //在build中构建前端界面
  //构建界面思路：分析界面行列数，以行列为单位用添加组件的形式构建界面
  build() {
    //Column(){}控制列数
    Column(){
      //Row(){}控制行数
      Row(){
        //Text()生成文字
        Text('这里是第一列第一行文本')
        Text('这里是第一列第二行文本')
      }
      Row(){
        Text('这里是第二列第一行文本')
        Text('这里是第二列第二行文本')
      }
    }

  }
}