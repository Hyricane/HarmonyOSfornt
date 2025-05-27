//链式编程处理回调地狱
// new Promise<number>((resolve,reject)=>{
//   return setTimeout(()=>{
//     console.log('第1层')
//     resolve(1)
//   },1000)
// }).then((res)=>{
//   console.log('',res)
//
// new Promise<number>((resolve,reject)=>{
//     return setTimeout(()=>{
//       console.log('第2层')
//       resolve(2)
//     },2000)
//   })
//   .then((res)=>{
//       console.log('',res)
//
//       new Promise<number>((resolve,reject)=>{
//         return setTimeout(()=>{
//           console.log('第3层')
//           resolve(3)
//         },3000)
//       })
//     })
// })

export let getNewPromise=(time:number,resolveRes:number):Promise<number>=>{
  return new Promise<number>((resolve,reject)=>{
    setTimeout(()=>{
      console.log(`第${resolveRes}层`)
      resolve(resolveRes)
    },time)
  })
}

getNewPromise(1000,1)
  .then((res)=>{
    console.log('',res)

    return getNewPromise(2000,2)
  })
  .then((res=>{
    console.log(res.toString())
    return getNewPromise(3000,3)
  }))
  .then(res=>{
    console.log(res.toString())
    return getNewPromise(4000,4)
  })
@Entry
@Component
struct Page_ChainToCallbackHell {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_ChainToCallbackHellHelloWorld')
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