interface  LPerson{
  name:string
  age:number
}
@Component
struct HelloComp {
  // @Link双向绑定数据,不同与@Prop,可以同步子组件中对父组件数据所做的操作
  @Link count: number
  @Link lperson2:LPerson
  build() {
    Text('我是组件' + this.count+this.lperson2.age)
      .onClick(() => {
        this.count--
        this.lperson2.age--
      })
  }
}

@Entry
@Component
struct Page_Link {
  @State count: number = 99
  @State lperson:LPerson = {
    name:'zs',
    age:18
  }

  build() {
    Column() {
      Text('我是页面' + this.count+this.lperson.age)
        .onClick(() => {
          this.count++
          this.lperson.age++
        })
      HelloComp({
        count: this.count, // 父组件初始化
        lperson2:this.lperson

      })
    }
    .height('100%')
    .width('100%')
  }
}