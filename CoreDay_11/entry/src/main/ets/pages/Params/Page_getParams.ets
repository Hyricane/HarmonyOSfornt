import { router } from '@kit.ArkUI'
interface Person{
  name:string,
  age:number,
  desc:string
}
@Entry
@Component
struct Page_getParams {
  @State stu:Person = {
    name: '',
    age: 0,
    desc: ''
  }
  aboutToAppear(): void {
    // 通过路由接受到的数据类型不明确,所以只能接受,不能调用,需要使用类型断言来指定类型
    router.getParams()
    AlertDialog.show({message:JSON.stringify(router.getParams())})
    // 类型断言
    // 数据 as 类型
    this.stu = router.getParams() as Person
  }

  build() {
    Column(){
      Text(this.stu.desc)
    }
    .height('100%')
    .width('100%')
  }
}