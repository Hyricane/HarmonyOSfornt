@Entry
@Component
struct Page_BoxModel {
  @State message: string = 'Hello World';

  build() {
    Column(){
      Column(){
        Text('柬埔寨是我国传统友好邻邦和铁杆朋友，这得益于两国领导人的战略引领。60多年来，两国高层往来密切，结下特殊友谊，为双边关系把舵定向。西哈努克太皇视中国为第二故乡。2016年，习近平主席作为国家主席首次访柬，发出中国重视老朋友、不忘老朋友、力挺老朋友的清晰信号。2019年，中柬率先签署构建命运共同体行动计划，为推动构建人类命运共同体发挥示范作用。2020年11月，习近平主席为柬埔寨太后莫尼列颁授中华人民共和国“友谊勋章”。他说：“这枚沉甸甸的‘友谊勋章’，代表了中国人民对莫尼列太后的崇敬之情和对柬埔寨人民的深厚情谊，也象征着中柬两国亲密无间的友好感情。”2023年，双方开启建设高质量、高水平、高标准中柬命运共同体的新时代。')
          // 内边距
          // 传入一个数值来为4边统一设置
          .padding(30)
          // 传入对象，在其中设置方位词来分别设置
          .padding({
            top:50,
            right:30,
            bottom:40,
            left:20
          })
          // 边框
          // 传入对象，在对象中分别设置属性
          .border({
            width:3,//粗细
            color:Color.Green,//颜色
            style:BorderStyle.Dashed//样式：solid实线（默认）dashed虚线 dotted点线
          })
      }
      .width('75%')
      .backgroundColor(Color.Pink)
    }
    .width('100%')
    .height('100%')
  }
}