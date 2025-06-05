import { photoAccessHelper } from '@kit.MediaLibraryKit';
import { fileIo } from '@kit.CoreFileKit';
import { request } from '@kit.BasicServicesKit';
import { http } from '@kit.NetworkKit';
import { promptAction } from '@kit.ArkUI';
import { BodyType, HeaderType } from './Index';


@Entry
@Component
struct Page_FileUpload_review {
  @State imgUrl: ResourceStr = ''
  @State message: string = '上传';

  build() {
    Column() {
      Image(this.imgUrl)
      Text(this.message)
        .id('Page_FileUpload_reviewHelloWorld')
        .fontSize($r('app.float.page_text_font_size'))
        .fontWeight(FontWeight.Bold)
        .onClick(async () => {
          try {
            let option = new photoAccessHelper.PhotoSelectOptions
            option.maxSelectNumber = 1
            option.MIMEType = photoAccessHelper.PhotoViewMIMETypes.IMAGE_VIDEO_TYPE
            let picker = new photoAccessHelper.PhotoViewPicker()
            const res = await picker.select(option)
            let file = fileIo.openSync(res.photoUris[0])
            let fileType:string = 'jpg'
            let fileName = Date.now()+'.'+fileType
            let copyPath = getContext().cacheDir+'/'+fileName
            fileIo.copyFileSync(file.fd,copyPath)
            const uploadTask = await request.uploadFile(getContext(),{
              url:'https://hmajax.itheima.net/api/uploadimg',
              header:{
                ContextType:'multipart/form-data',
              },
              method:http.RequestMethod.POST,
              files:[{
                filename:fileName,
                name:'img',
                type:fileType,
                uri:`internal://cache/${fileName}`
              }],
              data:[]
            })
            uploadTask.on('headerReceive',(header)=>{
              let uploadRes = (JSON.parse((header as HeaderType).body) as BodyType)
              promptAction.showToast({message:uploadRes.message})
              this.imgUrl = uploadRes.data.url
            })
          }catch (err){
            AlertDialog.show({
              message:JSON.stringify(err)
            })
          }
        })
    }
    .height('100%')
    .width('100%')
  }
}