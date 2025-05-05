import { TabTitleBar, window } from '@kit.ArkUI';

interface BannerItem {
  imgUrl: ResourceStr,
  imgTitle: string
}

interface ColumnarItem {
  iconUrl: ResourceStr,
  iconTitle: string
}

interface RecommendItem {
  imgUrl: ResourceStr,
  title: string,
  createTime: string
}


@Entry
@Component
struct Page_zy {
  windowClass?: window.Window
  @State bannerList: BannerItem[] = [
    { imgUrl: $r('app.media.banner_01_1'), imgTitle: '谷歌杀入开源大模型，凭什么问鼎王座？' },
    { imgUrl: $r('app.media.banner_01_3'), imgTitle: '微软牵手OpenAI劲敌！Mistral顶级大模型不再开源' },
    { imgUrl: $r('app.media.banner_01_4'), imgTitle: '生成式AI会扼杀DevSecOps吗' },
    { imgUrl: $r("app.media.banner_01_2"), imgTitle: '微软继续Linux化！sudo原生命令强势登录Windows' },
  ]
  @State columnarList: ColumnarItem[] = [
    { iconUrl: $r('app.media.ic_01_1'), iconTitle: '内容精选' },
    { iconUrl: $r('app.media.ic_01_2'), iconTitle: '学堂' },
    { iconUrl: $r('app.media.ic_01_3'), iconTitle: '鸿蒙开发者社区' },
    { iconUrl: $r('app.media.ic_01_4'), iconTitle: '博客' },
    { iconUrl: $r('app.media.ic_01_5'), iconTitle: '企业培训' },
    { iconUrl: $r('app.media.ic_01_6'), iconTitle: 'Next训练营' },
    { iconUrl: $r('app.media.ic_01_7'), iconTitle: '精培' },
  ]
  @State recommendList: RecommendItem[] = [{
    imgUrl: $r('app.media.list_02_1'),
    title: '字节一面：TCP和UDP可以使用同一个端口号吗？',
    createTime: '2024-03-05 10:07:22'
  },
    {
      imgUrl: $r('app.media.list_02_2'),
      title: 'NoSQL：在高并发场景下，数据库和NoSQL如何做到互补？',
      createTime: '2024-03-05 10:03:17'
    }, {
      imgUrl: $r('app.media.list_02_3'),
      title: '处理大规模并发请求时如何设计和优化Python后端服务的架构和性能',
      createTime: '2024-03-05 10:03:09'
    },
    {
      imgUrl: $r('app.media.list_02_3'),
      title: '处理大规模并发请求时如何设计和优化Python后端服务的架构和性能',
      createTime: '2024-03-05 10:03:09'
    },
    {
      imgUrl: $r('app.media.list_02_4'),
      title: 'C++右值引用：解锁高效内存管理与性能优化的奥秘',
      createTime: '2024-03-05 09:55:00'
    },
    { imgUrl: $r('app.media.list_02_5'), title: '现代分布式系统架构的权衡分析', createTime: '2024-03-05 09:52:57' },]
  scroller: Scroller = new Scroller()
  aaa: string [] = [
    '首页', '视频', '消息', '我的'
  ]
  @State bbb: number = 0

  async setFullScreen(flag: boolean) {
    if (!this.windowClass) {
      this.windowClass = await window.getLastWindow(getContext(this))
    }
    this.windowClass.setWindowLayoutFullScreen(flag)
  }

  onPageShow(): void {
    this.setFullScreen(true)
  }

  onPageHide(): void {
    this.setFullScreen(false)
  }

  //代码位置
  build() {
    Column() {

      Stack() {
        Tabs() {
          this.botton()
        }.barPosition(BarPosition.End)
        .animationDuration(0)
        .onTabBarClick((index: number) => {
          this.bbb = index
        })

        Image($r('app.media.bg_02_1'))
          .bjjjj()
          .opacity(this.bbb == 1 ? 1 : 0)
        Image($r('app.media.bg_02_2'))
          .bjjjj()
          .opacity(this.bbb == 1 ? 1 : 0)
      }.alignContent(Alignment.Bottom)

    }
  }

  @Builder
  aaaaa(ind: string, inden: number) {
    if (inden == 1 && this.bbb == 1) {
      Text(ind)
        .fontColor(Color.White)
        .fontWeight(600)
    } else if (this.bbb == inden) {
      Text(ind)
        .fontColor(Color.Black)
        .fontWeight(600)
    } else {
      Text(ind)
        .fontColor(Color.Grey)
    }

  }

  @Builder
  botton() {
    ForEach(this.aaa, (item: string, inden: number) => {
      if (this.bbb == 0) {
        //顶部

        TabContent() {
          Column() {
            this.top()
            this.newLocalBuilder_4()
          }
        }
        .tabBar(this.aaaaa(item, inden))

      } else if (this.bbb == 1) {
        TabContent() {
          Column() {
            Image($r('app.media.list_02_4'))
          }
        }
        .tabBar(this.aaaaa(item, inden))
      } else {
        TabContent() {
          Column() {
            Text('待完成消息')
          }
        }
        .tabBar(this.aaaaa(item, inden))
      }
    })

  }

  @Styles
  bjjjj(){
    .width('100%')
    .zIndex(-1)
  }

  @Builder
  newLocalBuilder_4() {
    Scroll(this.scroller) {
      Column() {

        //轮播图
        this.newLocalBuilder();
        //网格布局
        this.newLocalBuilder_1();
        //热门推荐
        this.newLocalBuilder_2();
        //List轮图
        this.newLocalBuilder_3();
      };
    }
    .width('100%')
  }

  @Builder
  top() {
    Row() {
      Image($r('app.media.hot_01'))
        .width(60)
        .onClick(() => {
          this.scroller.scrollEdge(Edge.Top)
        })
      Row({ space: 15 }) {
        Image($r('app.media.user_01'))
          .width(20)
        Image($r('app.media.more_01'))
          .width(20)

      }
    }.padding({ left: 28, right: 16 })
    .height(56)
    .width('100%')
    .justifyContent(FlexAlign.SpaceBetween)
  }

  @Builder
  newLocalBuilder_3() {
    //List轮图
    List() {
      ForEach(this.recommendList, (item: RecommendItem) => {
        ListItem() {
          Row() {
            Image(item.imgUrl)
              .width(142)
              .borderRadius(8);
            Column() {
              Text(item.title)
                .fontSize(15)
                .fontColor('#303030')
                .maxLines(2)
                .textOverflow({ overflow: TextOverflow.Ellipsis });
              Text(item.createTime)
                .fontSize(12)
                .fontColor('#c0c0c0');
            }
            .margin({ left: 10 })
            .layoutWeight(1)
            .height('100%')
            .justifyContent(FlexAlign.SpaceBetween)
            .alignItems(HorizontalAlign.Start);
          }
          .justifyContent(FlexAlign.SpaceBetween)
          .width('100%')
          .height(110)
          .padding({ top: 15, bottom: 15 })
          .border({ width: { bottom: 2 }, color: '#f4f4f4' });
        }
      });
    }
  }

  @Builder
  newLocalBuilder_2() {
    //热门推荐
    Text('热门推荐')
      .width('100%')
      .padding({ left: 10 })
      .fontSize(20)
      .fontColor('#303030')
      .fontWeight(700)
  }

  @Builder
  newLocalBuilder_1() {
    //网格布局
    Grid() {
      ForEach(this.columnarList, (image: ColumnarItem) => {
        GridItem() {
          Column() {
            Image(image.iconUrl)
              .width(40);
            Text(image.iconTitle)
              .fontSize(14);
          };

        };
      });
    }
    .height(65)
    .rowsTemplate('1fr')
    .columnsGap(24)
    .padding({ left: 12 })
    .width('100%')
    .margin({ top: 10 })
    .scrollBar(BarState.Off)
  }

  @Builder
  newLocalBuilder() {
    //轮播图
    Swiper() {
      ForEach(this.bannerList, (image: BannerItem) => {
        Stack() {
          Image(image.imgUrl)
            .width('100%');
          Text(image.imgTitle)
            .fontColor(Color.White)
            .margin({ left: 10, right: 10, bottom: 30 });
        }.alignContent(Alignment.BottomStart);
      });
    }.loop(true)
    .autoPlay(true)
    .indicator(Indicator.dot()
      .itemWidth(30)
      .itemHeight(5)
      .selectedItemWidth(30)
      .selectedItemHeight(5)
      .selectedColor(Color.White)
      .left(0)
    )
  }
}