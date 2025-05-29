//promise的静态方法
//获取成功结果
Promise.resolve(1)
  .then((res)=>{
    console.log('1')
  })
//获取失败结果
Promise.reject(-1)
  .then((res)=>{
    console.log('-1')
  })


//对多个promise结果的处理
let p1 = new Promise<number>((resolve,reject)=>{
  setTimeout(()=>{
    Math.random()>0.5 ? resolve(1) : reject(-1)
  })
}).then((res)=>{
  console.log(res.toString())
})
  .catch((err:number)=>{
    console.log(err.toString())
  })

let p2 = new Promise<number>((resolve,reject)=>{
  setTimeout(()=>{
    Math.random()>0.5 ? resolve(1) : reject(-1)
  })
}).then((res)=>{
  console.log(res.toString())
})
  .catch((err:number)=>{
    console.log(err.toString())
  })

let p3 = new Promise<number>((resolve,reject)=>{
  setTimeout(()=>{
    Math.random()>0.5 ? resolve(1) : reject(-1)
  },1000)
}).then((res)=>{
  console.log(res.toString())
})
  .catch((err:number)=>{
    console.log(err.toString())
  })

let p4 = new Promise<number>((resolve,reject)=>{
  setTimeout(()=>{
    Math.random()>0.5 ? resolve(1) : reject(-1)
  },2000)
}).then((res)=>{
  console.log(res.toString())
})
  .catch((err:number)=>{
    console.log(err.toString())
  })
// 所有promise都成功执行then
Promise.all([p1,p2,p3,p4])
  .then((res)=>{
    console.log('all sucess'+JSON.stringify(res))
  })
  .catch((err:number)=>{
    console.log('one of p faild'+err)
  })
//有一个promise成功执行then
Promise.race([p1,p2,p3,p4])
  .then((res)=>{
    console.log('one of p sucess'+res)
  })
  .catch((err:number)=>{
    console.log('one of p faild'+err)
  })
// 等待所有promise执行完毕  返回所有promise执行结果的对象数组
Promise.allSettled([p1,p2,p3,p4])
  .then((res)=>{
    console.log('all p complete'+JSON.stringify(res))
  })

@Entry
@Component
struct Page_Promise_Static {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page_Promise_StaticHelloWorld')
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