class Animal{
  name:string
  weight:number
  color:Color
  age:number
  constructor(name:string,weight:number,color:Color,age:number) {
    this.name = name
    this.weight = weight
    this.color = color
    this.age = age
  }
  run(place:string){
    console.log(`${this.name}在${place}奔跑`)
  }
  catch(food:string){
    console.log(`${this.name}抓到了${food}作为食物`)
  }
}

type catBreed = '英短'|'美短'
class Cat extends Animal{
  breed:catBreed
  constructor(name:string,weight:number,color:Color,age:number,breed:catBreed) {
    super(name,weight,color,age)
    this.breed = breed
  }
  shout(breed:catBreed){
    console.log(`${breed}在喵喵叫`)
  }
}

let cat:Cat = new Cat('喵喵',8,Color.White,3,'英短')
cat.shout('英短')
cat.catch('老鼠')
cat.run('草地')

@Entry
@Component
struct Page_AnimalClass {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_AnimalClassHelloWorld')
        .fontSize($r('app.float.page_text_font_size'))
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
        .onClick(() => {
          this.message = 'Welcome';
        })
    }
    .height('100%')
    .width('100%')
  }
}