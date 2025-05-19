//使用@Observed实现对深层数据监控
@Observed
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
  @ObjectLink item: Person
  fn = () => {}

  build() {
    Text(`${this.item.name}-${this.item.age}`)
      .fontSize(20)
      .onClick(() => {
        // item.age++
        this.fn()
      })
  }
}

@Entry
@Component
struct Page_Observed {
  // 对象数组 => 嵌套数据
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
          fn: () => {
            item.age++
            // 嵌套深层的数据变化  ui不更新
            // console.log('item',JSON.stringify(item))
            // this.list.splice(index, 1, item)
          }
        })
      })

    }
    .height('100%')
    .width('100%')
  }
}