//使用@Observed实现对深层数据监控
@Observed  //只能修饰类,因此对象类型改为类来定义
class Person {
  name: string
  age: number

  constructor(name: string, age: number) {
    this.name = name
    this.age = age
  }


}

@Component
struct TextComp {
  // 使用@ObjectLink链接被@Observed修饰的对象
  // Link实现双向绑定,因此不需要再用回调函数传参
  @ObjectLink item: Person

  build() {
    Text(`${this.item.name}-${this.item.age}`)
      .fontSize(20)
      .onClick(() => {
        // item.age++
        // this.fn()
        this.item.age++
      })
  }
}

@Entry
@Component
struct Page_Observed {
  // 对象数组 => 嵌套数据
  // 使用@State修饰对象数组
  @State list: Person[] = [
    new Person('zs',10),
    new Person('ls',11),
    new Person('ww',12)
  ]

  build() {
    Column() {
      ForEach(this.list, (item:Person, index: number) => {
        TextComp({
          item: item,
          // 回调函数只是解决了 子组件无法更新数据的问题
          // fn: () => {
          //   item.age++
          //   // 嵌套深层的数据变化  ui不更新
          //   // console.log('item',JSON.stringify(item))
          //   // this.list.splice(index, 1, item)
          // }
        })
      })

    }
    .height('100%')
    .width('100%')
  }
}