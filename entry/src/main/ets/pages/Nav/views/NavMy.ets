import { promptAction } from '@kit.ArkUI'

@Component
struct NavMy {
  @Consume
  navPathStack: NavPathStack

  build() {
    NavDestination() {
      Column() {
        Row({ space: 12 }) {
          Image('https://img2.baidu.com/it/u=420228726,3034013112&fm=253&fmt=auto&app=120&f=JPEG?w=800&h=800')
            .width(70)
            .aspectRatio(1)
            .borderRadius(10)

          Column({ space: 10 }) {
            Text('崛誓悻詈')
              .fontSize(20)
              .fontWeight(FontWeight.Bold)
              .width('100%')

            Row({ space: 10 }) {
              Text('微信号: zeng_zhou529623')
                .fontSize(14)
                .fontColor(Color.Gray)

              Row() {
                Image($r("app.media.system_qr_code"))
                  .width(20)
                  .aspectRatio(1)
                  .fillColor(Color.Gray)

                Image($r('sys.media.ohos_ic_public_arrow_right'))
                  .width(30)
                  .aspectRatio(1)
                  .fillColor(Color.Gray)
              }
            }.width('100%')
            .justifyContent(FlexAlign.SpaceBetween)
          }.layoutWeight(1)
        }.width('100%')

        Blank()
          .height(10)
          .color('#ededed')

        Row() {
          Row({ space: 12 }) {
            Image($r('app.media.system_qr_code'))
              .width(20)
              .aspectRatio(1)
              .fillColor(Color.Gray)
            Text('服务')
          }

          Image($r('sys.media.ohos_ic_public_arrow_right'))
            .width(30)
            .aspectRatio(1)
            .fillColor(Color.Gray)

        }.width('100%')
        .justifyContent(FlexAlign.SpaceBetween)
        .height(60)
        .onClick(() => {
          this.navPathStack.pushPath({
            name: 'service'
          })
        })

        Blank()
          .height(10)
          .color('#ededed')
        Row() {
          Row({ space: 12 }) {
            Image($r('app.media.system_qr_code'))
              .width(20)
              .aspectRatio(1)
              .fillColor(Color.Gray)
            Text('收藏')
          }

          Image($r('sys.media.ohos_ic_public_arrow_right'))
            .width(30)
            .aspectRatio(1)
            .fillColor(Color.Gray)

        }.width('100%')
        .justifyContent(FlexAlign.SpaceBetween)
        .height(60)
        .border({
          color: Color.Gray,
          width: {
            bottom: 0.5
          }
        })

        Row() {
          Row({ space: 12 }) {
            Image($r('app.media.system_qr_code'))
              .width(20)
              .aspectRatio(1)
              .fillColor(Color.Gray)
            Text('朋友圈')
          }

          Image($r('sys.media.ohos_ic_public_arrow_right'))
            .width(30)
            .aspectRatio(1)
            .fillColor(Color.Gray)

        }.width('100%')
        .justifyContent(FlexAlign.SpaceBetween)
        .height(60)
        .border({
          color: Color.Gray,
          width: {
            bottom: 0.5
          }
        })

        Row() {
          Row({ space: 12 }) {
            Image($r('app.media.system_qr_code'))
              .width(20)
              .aspectRatio(1)
              .fillColor(Color.Gray)
            Text('卡包')
          }

          Image($r('sys.media.ohos_ic_public_arrow_right'))
            .width(30)
            .aspectRatio(1)
            .fillColor(Color.Gray)

        }.width('100%')
        .justifyContent(FlexAlign.SpaceBetween)
        .height(60)
        .border({
          color: Color.Gray,
          width: {
            bottom: 0.5
          }
        })

        Row() {
          Row({ space: 12 }) {
            Image($r('app.media.system_qr_code'))
              .width(20)
              .aspectRatio(1)
              .fillColor(Color.Gray)
            Text('表情')
          }

          Image($r('sys.media.ohos_ic_public_arrow_right'))
            .width(30)
            .aspectRatio(1)
            .fillColor(Color.Gray)

        }.width('100%')
        .justifyContent(FlexAlign.SpaceBetween)
        .height(60)

        Blank()
          .height(10)
          .color('#ededed')

        Row() {
          Row({ space: 12 }) {
            Image($r('app.media.system_qr_code'))
              .width(20)
              .aspectRatio(1)
              .fillColor(Color.Gray)
            Text('设置')
          }

          Image($r('sys.media.ohos_ic_public_arrow_right'))
            .width(30)
            .aspectRatio(1)
            .fillColor(Color.Gray)

        }.width('100%')
        .justifyContent(FlexAlign.SpaceBetween)
        .height(60)
        .onClick(() => {
          this.navPathStack.pushPath({
            name: 'setting'
          })
        })
      }
      .margin(10)
    }.title('我的')
  }
}

@Builder
export function NavMyFunc() {
  NavMy()
}