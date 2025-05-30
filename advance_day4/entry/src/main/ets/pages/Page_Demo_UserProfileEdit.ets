import { promptAction, router } from '@kit.ArkUI';
import * as data from './Page_Demo_UserProfile';

// 上传的响应体
interface UploadResponse {
  body: string
}

@Entry
@Component
struct Page_Demo_UserProfileEdit {
  @State user_edit:Partial<data.Data>={}
  async aboutToAppear(){
    const res_edit= await data.req.request('https://hmajax.itheima.net/api/settings?creator=' + encodeURIComponent(data.creator))
    const responds = (JSON.parse(res_edit.result as string) as data.ApifoxModel)
    this.user_edit = responds.data
  }
  build() {
    Column({ space: 20 }) {
      // 自定义导航栏
      this.navigationBuilder()
      // 头像
      this.avatarBuilder()
      // 信息
      Column({ space: 10 }) {
        Text('基本资料')
          .fontSize(20)
          .fontWeight(FontWeight.Bold)
        // 用户昵称
        Row() {
          TextLabel({ title: '昵称:' })
          TextInput({ text: this.user_edit.nickname })
            .backgroundColor(Color.Transparent)
            .height(20)
            .padding(0)
            .fontSize(14)
        }

        Divider()
        // 有限
        Row() {
          TextLabel({ title: '邮箱:' })
          TextInput({ text: this.user_edit.email })
            .backgroundColor(Color.Transparent)
            .height(20)
            .padding(0)
            .fontSize(14)
        }

        Divider()
        //  性别
        Row() {
          TextLabel({ title: '性别:' })
          Text(0 == 0 ? '男' : '女')
            .fontSize(14)
            .layoutWeight(1)
            .onClick(() => {
              TextPickerDialog.show({
                range:['男','女'],
                canLoop:false,
                onAccept:(value)=>{
                   this.user_edit.gender = value.index as number
                }
              })
            })
          Image($r('app.media.ic_public_arrow_right'))
            .width(20)
            .fillColor(Color.Gray)
        }
        .width('100%')

        Divider()

        // 用户简介
        Column({ space: 10 }) {
          TextLabel({ title: '一句话介绍:' })
          TextInput({ text: this.user_edit.desc })
            .backgroundColor(Color.Transparent)
            .height(20)
            .padding(0)
            .fontSize(14)
        }
        .alignItems(HorizontalAlign.Start)

        Divider()


      }
      .width('100%')
      .alignItems(HorizontalAlign.Start)
    }
    .padding(10)
  }

  @Builder
  avatarBuilder() {
    // 头像
    Stack() {
      Image($r('app.media.ic_public_joke_logo'))
        .width(70);
      Text()
        .size({ width: '100%', height: '100%' })
        .backgroundColor('rgba(0,0,0,0.4)');
      Image($r('app.media.ic_public_camera_filled'))
        .width(30)
        .fillColor(Color.White);
    }
    .width(70)
    .height(70)
    .borderRadius(35)
    .clip(true)
    .alignSelf(ItemAlign.Start)
    .onClick(async () => {
      // TODO 上传图片

    })

  }

  @Builder
  navigationBuilder() {
    Row() {
      Image($r('app.media.ic_public_arrow_left'))
        .width(30)
        .onClick(() => {
          router.back()
        })
      Text('编辑资料')
        .layoutWeight(1)
        .textAlign(TextAlign.Center)
        .fontWeight(FontWeight.Bold)
        .fontSize(14)
      Text('保存')
        .fontColor('#448ef7')
        .fontWeight(FontWeight.Bold)
        .onClick(() => {
          // 提交用户数据
        })
    }
    .width('100%')
  }
}

@Component
struct TextLabel {
  title: string = ''

  build() {
    Text(this.title)
      .fontColor(Color.Gray)
      .fontSize(14)
      .width(75)
  }
}