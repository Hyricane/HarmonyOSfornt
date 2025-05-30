import { photoAccessHelper } from '@kit.MediaLibraryKit';
import { fileIo as fs } from '@kit.CoreFileKit';
import { request } from '@kit.BasicServicesKit';
import { http } from '@kit.NetworkKit';
import { promptAction } from '@kit.ArkUI';

interface HeaderType {
  // 只需要用body
  body: string
}

interface BodyType {
  message: string
  data: Data
}

interface Data {
  url: string
}

@Entry
@Component
struct Index {
  @State imgUrl: string = '';

  build() {
    Column() {
      Text('上传')
        .id('HelloWorld')
        .fontSize($r('app.float.page_text_font_size'))
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
        .onClick(async () => {
          try {
          //获取图片路径
          // 1.实例化photoAccessHelper对象,创建option
          let option = new photoAccessHelper.PhotoSelectOptions
          // 2.在option中规定最大媒体数和媒体类型
          option.maxSelectNumber=2
          option.MIMEType=photoAccessHelper.PhotoViewMIMETypes.IMAGE_VIDEO_TYPE
          // 创建picker,用于拉起图库
          let picker = new photoAccessHelper.PhotoViewPicker()
          const res = await picker.select(option)
          AlertDialog.show({message:res.photoUris[0]})
          // 鸿蒙只能上传cache中的文件,因此需要复制当前文件到cache中
          //   导入fileIo文件管理获取文件,返回File类型
            let file = fs.openSync(res.photoUris[0])//同步传输方式
            let fileType = 'jpg'
            //自定义一个不会重复的文件名,作为复制过去的文件名
            let fileName = Date.now()+'.'+fileType
            // 获取复制的路径
            let copyPath =  getContext().cacheDir+'/'+fileName
            // 执行复制操作,传两个参数,被复制文件的fd,目标文件夹路径
            fs.copyFileSync(file.fd,copyPath)

            //上传图片
            //upload模块上传文件
            const uploadTask = await request.uploadFile(getContext(),{
              url:'https://hmajax.itheima.net/api/uploadimg',
              header:{
                //上传的文件类型
                ContenType:'multipart/form-data',
              },
              method:http.RequestMethod.POST,
              // 上传的图片对象
              files:[{
                filename:fileName, //文件名
                name:'img', //传递到后端的键名
                type:fileType,//上传的文件后缀
                uri:`internal://cache/${fileName}` //上传的图片位置,所示为固定写法,不能更改
              }],
              data:[]//必须写,内容可省略
            })
            //获取请求的返回结果
            // 文件的返回结果不能通过then拿到,拿到的是一个上传任务
            // 上传耗时,需要进行监听
            uploadTask.on('headerReceive',(header)=>{//Header中储存响应结果
              let uploadRes = (JSON.parse((header as HeaderType).body) as BodyType)
              promptAction.showToast({message:uploadRes.message})
              this.imgUrl = uploadRes.data.url//网图地址
            })

          }catch (err){
            AlertDialog.show({message:JSON.stringify(err)})
          }
        })
      Image(this.imgUrl)
    }
    .height('100%')
    .width('100%')
  }
}