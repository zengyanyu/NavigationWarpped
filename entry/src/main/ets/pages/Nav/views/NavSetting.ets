@Component
struct NavSetting {
  @Consume
  navPathStack: NavPathStack
  scroller: Scroller = new Scroller()

  build() {
    NavDestination() {
      List({ scroller: this.scroller }) {
        ListItem() {
          Column({ space: 10 }) {
            Row() {
              Text('账号与安全')
              Image($r('sys.media.ohos_ic_public_arrow_right'))
                .width(30)
                .aspectRatio(1)
            }
            .width('100%')
            .padding(10)
            .height(60)
            .backgroundColor(Color.White)
            .justifyContent(FlexAlign.SpaceBetween)

            Column() {
              Row() {
                Text('青少年模式')
                Image($r('sys.media.ohos_ic_public_arrow_right'))
                  .width(30)
                  .aspectRatio(1)
              }
              .width('100%')
              .justifyContent(FlexAlign.SpaceBetween)
              .height(60)
              .backgroundColor(Color.White)
              .border({
                color: Color.Gray,
                width: {
                  bottom: 1
                }
              })

              Row() {
                Text('关怀模式')
                Image($r('sys.media.ohos_ic_public_arrow_right'))
                  .width(30)
                  .aspectRatio(1)
              }
              .width('100%')
              .backgroundColor(Color.White)
              .justifyContent(FlexAlign.SpaceBetween)
              .height(60)
            }.width('100%').padding(10)
            .backgroundColor(Color.White)

            Column() {
              Row() {
                Text('新信息通知')
                Image($r('sys.media.ohos_ic_public_arrow_right'))
                  .width(30)
                  .aspectRatio(1)
              }
              .width('100%')
              .justifyContent(FlexAlign.SpaceBetween)
              .height(60)
              .backgroundColor(Color.White)
              .border({
                color: Color.Gray,
                width: {
                  bottom: 1
                }
              })

              Row() {
                Text('聊天')
                Image($r('sys.media.ohos_ic_public_arrow_right'))
                  .width(30)
                  .aspectRatio(1)
              }
              .width('100%')
              .backgroundColor(Color.White)
              .justifyContent(FlexAlign.SpaceBetween)
              .height(60)
              .border({
                color: Color.Gray,
                width: {
                  bottom: 1
                }
              })

              Row() {
                Text('设备')
                Image($r('sys.media.ohos_ic_public_arrow_right'))
                  .width(30)
                  .aspectRatio(1)
              }
              .width('100%')
              .backgroundColor(Color.White)
              .justifyContent(FlexAlign.SpaceBetween)
              .height(60)
              .border({
                color: Color.Gray,
                width: {
                  bottom: 1
                }
              })

              Row() {
                Text('通用')
                Image($r('sys.media.ohos_ic_public_arrow_right'))
                  .width(30)
                  .aspectRatio(1)
              }
              .width('100%')
              .backgroundColor(Color.White)
              .justifyContent(FlexAlign.SpaceBetween)
              .height(60)
            }.width('100%').padding(10)
            .backgroundColor(Color.White)

            Text('隐私')
              .padding(10)
              .width('100%')
              .fontSize(14)
              .fontColor(Color.Gray)
              .textAlign(TextAlign.Start)

            Column() {
              Row() {
                Text('朋友权限')
                Image($r('sys.media.ohos_ic_public_arrow_right'))
                  .width(30)
                  .aspectRatio(1)
              }
              .width('100%')
              .justifyContent(FlexAlign.SpaceBetween)
              .height(60)
              .backgroundColor(Color.White)
              .border({
                color: Color.Gray,
                width: {
                  bottom: 1
                }
              })

              Row() {
                Text('个人信息与权限')
                Image($r('sys.media.ohos_ic_public_arrow_right'))
                  .width(30)
                  .aspectRatio(1)
              }
              .width('100%')
              .backgroundColor(Color.White)
              .justifyContent(FlexAlign.SpaceBetween)
              .height(60)
              .border({
                color: Color.Gray,
                width: {
                  bottom: 1
                }
              })

              Row() {
                Text('个人信息收集清单')
                Image($r('sys.media.ohos_ic_public_arrow_right'))
                  .width(30)
                  .aspectRatio(1)
              }
              .width('100%')
              .backgroundColor(Color.White)
              .justifyContent(FlexAlign.SpaceBetween)
              .height(60)
              .border({
                color: Color.Gray,
                width: {
                  bottom: 1
                }
              })

              Row() {
                Text('第三方信息共享清单')
                Image($r('sys.media.ohos_ic_public_arrow_right'))
                  .width(30)
                  .aspectRatio(1)
              }
              .width('100%')
              .backgroundColor(Color.White)
              .justifyContent(FlexAlign.SpaceBetween)
              .height(60)
            }.width('100%').padding(10)
            .backgroundColor(Color.White)

            Row() {
              Row({ space: 4 }) {
                Text('拆件')
                Image($r('app.media.system_qr_code'))
                  .width(20)
                  .aspectRatio(1)
                  .fillColor(Color.Gray)
              }

              Row({ space: 4 }) {
                Text('微信输入法可以【问AI】了')
                Image($r('sys.media.ohos_ic_public_arrow_right'))
                  .width(30)
                  .aspectRatio(1)
              }
            }
            .width('100%')
            .padding(10)
            .height(60)
            .backgroundColor(Color.White)
            .justifyContent(FlexAlign.SpaceBetween)

            Column() {
              Row() {
                Text('关于微信')
                Image($r('sys.media.ohos_ic_public_arrow_right'))
                  .width(30)
                  .aspectRatio(1)
              }
              .width('100%')
              .justifyContent(FlexAlign.SpaceBetween)
              .height(60)
              .backgroundColor(Color.White)
              .border({
                color: Color.Gray,
                width: {
                  bottom: 1
                }
              })

              Row() {
                Text('帮助与反馈')
                Image($r('sys.media.ohos_ic_public_arrow_right'))
                  .width(30)
                  .aspectRatio(1)
              }
              .width('100%')
              .backgroundColor(Color.White)
              .justifyContent(FlexAlign.SpaceBetween)
              .height(60)
            }.width('100%').padding(10)
            .backgroundColor(Color.White)

            Row() {
              Text('切换账号')
            }.width('100%')
            .justifyContent(FlexAlign.Center)
            .height(60)
            .backgroundColor(Color.White)

            Row() {
              Text('退出')
            }.width('100%')
            .justifyContent(FlexAlign.Center)
            .height(60)
            .backgroundColor(Color.White)
          }.width('100%')
          .backgroundColor('#ecedef')
        }
      }
    }.title('设置')
  }
}

@Builder
export function NavSettingFunc() {
  NavSetting()
}