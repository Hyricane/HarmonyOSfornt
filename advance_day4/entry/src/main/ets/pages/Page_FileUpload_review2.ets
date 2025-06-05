import { promptAction } from '@kit.ArkUI';
import { photoAccessHelper } from '@kit.MediaLibraryKit';
import fs from '@ohos.file.fs';
import { req } from './Page_Demo_UserProfile';
import { request } from '@kit.BasicServicesKit';
import { http } from '@kit.NetworkKit';
import { BodyType, HeaderType } from './Index';

@Entry
@Component
struct Page_FileUpload_review2 {
  @State ImgUrl: ResourceStr = '';

  build() {
    Column() {
      Image(this.ImgUrl)
      Text('上传')
        .id('Page_FileUpload_review2HelloWorld')
        .fontSize($r('app.float.page_text_font_size'))
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
        .onClick(async () => {
          try {
            let option = new photoAccessHelper.PhotoSelectOptions()
            option.maxSelectNumber = 2
            option.MIMEType =photoAccessHelper.PhotoViewMIMETypes.IMAGE_VIDEO_TYPE
            let picker = new  photoAccessHelper.PhotoViewPicker()
            const res = await picker.select(option)
            // res.photoUris[]
            let file = fs.openSync(res.photoUris[0])
            let fileType = 'jpg'
            let fileName = Date.now()+'.'+fileType
            let copyPath = getContext().cacheDir+'/'+fileName
            fs.copyFileSync(file.fd,copyPath)
            let uploadTask =await request.uploadFile(getContext(), {
              url: 'https://hmajax.itheima.net/api/uploadimg',
              header: {
                ContextType: 'multipart/form-data'
              },
              method: http.RequestMethod.POST,
              files: [{
                name:'img',
                filename:fileName,
                uri:`internal://cache/${fileName}`,
                type:fileType
              }],
              data: []
            })
            uploadTask.on('headerReceive',(header)=>{
              let headerRes = (JSON.parse((header as HeaderType).body) as BodyType)
              promptAction.showToast({message:headerRes.message})
              this.ImgUrl = headerRes.data.url
            })
          }catch (err){
            AlertDialog.show({
              message:JSON.stringify(err)+'fail to up load'
            })
          }
        })
    }
    .height('100%')
    .width('100%')
  }
}