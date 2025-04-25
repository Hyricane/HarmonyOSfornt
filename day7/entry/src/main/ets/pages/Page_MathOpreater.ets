let mathNum : number = 6
let mathNum2 : number = 9

let mathRes : number
console.log('',mathNum += mathNum2)
console.log('',mathNum -= mathNum2)
console.log('',mathNum *= mathNum2)
console.log('',mathNum2 /= mathNum)
console.log('',mathNum2 %= mathNum)
console.log('',mathNum2%mathNum)



@Entry
@Component
struct Page_MathOpreater {
  @State message: string = 'Hello World';

  build() {
    Column(){
    }
  }
}