@Component
struct NavService {
  @Consume
  navPathStack: NavPathStack
  scroller: Scroller = new Scroller()

  build() {
    NavDestination() {
      List({ scroller: this.scroller }) {
        ListItem() {
          Column({ space: 12 }) {
            Row() {
              Column({ space: 12 }) {
                Row({ space: 100 }) {
                  Image($r('app.media.system_qr_code'))
                    .width(50)
                    .aspectRatio(1)
                    .fillColor(Color.White)

                  Image($r('app.media.system_qr_code'))
                    .width(50)
                    .aspectRatio(1)
                    .fillColor(Color.White)
                }

                Row({ space: 100 }) {
                  Column() {
                    Text('收付款')
                      .fontSize(18)
                      .fontColor(Color.White)
                    Blank()
                      .height(12)
                  }

                  Column() {
                    Text('钱包')
                      .fontSize(18)
                      .fontColor(Color.White)
                    Text('¥26001.85')
                      .fontSize(12)
                      .fontColor(Color.White)
                  }
                }
              }
              .width('100%')
            }.width('100%')
            .height(150)
            .backgroundColor('#2aad67')
            .borderRadius(10)

            // 金融理财
            Column({ space: 20 }) {
              Text('金融理财')
                .margin({
                  left: 20,
                  top: 10
                })
                .fontColor(Color.Gray)
                .fontSize(18)
                .width('100%')
                .textAlign(TextAlign.Start)

              Row() {
                Column({ space: 10 }) {
                  Image($r('app.media.system_qr_code'))
                    .width(30)
                    .aspectRatio(1)
                    .fillColor(Color.Green)
                  Text('信用卡还款')
                    .fontSize(14)
                }.layoutWeight(1)

                Column({ space: 10 }) {
                  Image($r('app.media.system_qr_code'))
                    .width(30)
                    .aspectRatio(1)
                    .fillColor(Color.Green)
                  Text('微粒贷借款')
                    .fontSize(14)
                }.layoutWeight(1)

                Column({ space: 10 }) {
                  Image($r('app.media.system_qr_code'))
                    .width(30)
                    .aspectRatio(1)
                    .fillColor(Color.Green)
                  Text('理财通')
                    .fontSize(14)
                }.layoutWeight(1)

                Column({ space: 10 }) {
                  Image($r('app.media.system_qr_code'))
                    .width(30)
                    .aspectRatio(1)
                    .fillColor(Color.Green)
                  Text('保险服务')
                    .fontSize(14)
                }.layoutWeight(1)

              }.width('100%')
              .margin({
                left: 10,
                right: 10
              })
            }.width('100%')
            .height(130)
            .backgroundColor(Color.White)
            .borderRadius(10)

            // 生活服务
            Column({ space: 20 }) {
              Text('生活服务')
                .margin({
                  left: 20,
                  top: 10
                })
                .fontColor(Color.Gray)
                .fontSize(18)
                .width('100%')
                .textAlign(TextAlign.Start)

              Row() {
                Column({ space: 10 }) {
                  Image($r('app.media.system_qr_code'))
                    .width(30)
                    .aspectRatio(1)
                    .fillColor(Color.Green)
                  Text('手机充值')
                    .fontSize(14)
                }.layoutWeight(1)

                Column({ space: 10 }) {
                  Image($r('app.media.system_qr_code'))
                    .width(30)
                    .aspectRatio(1)
                    .fillColor(Color.Green)
                  Text('生活缴费')
                    .fontSize(14)
                }.layoutWeight(1)

                Column({ space: 10 }) {
                  Image($r('app.media.system_qr_code'))
                    .width(30)
                    .aspectRatio(1)
                    .fillColor(Color.Green)
                  Text('Q币充值')
                    .fontSize(14)
                }.layoutWeight(1)

                Column({ space: 10 }) {
                  Image($r('app.media.system_qr_code'))
                    .width(30)
                    .aspectRatio(1)
                    .fillColor(Color.Green)
                  Text('城市服务')
                    .fontSize(14)
                }.layoutWeight(1)

              }.width('100%')
              .margin({
                left: 10,
                right: 10
              })

              Row() {
                Column({ space: 10 }) {
                  Image($r('app.media.system_qr_code'))
                    .width(30)
                    .aspectRatio(1)
                    .fillColor(Color.Green)
                  Text('腾讯公益')
                    .fontSize(14)
                }.layoutWeight(1)

                Column({ space: 10 }) {
                  Image($r('app.media.system_qr_code'))
                    .width(30)
                    .aspectRatio(1)
                    .fillColor(Color.Green)
                  Text('医疗健康')
                    .fontSize(14)
                }.layoutWeight(1)

                Column({ space: 10 }) {

                }.layoutWeight(1)

                Column({ space: 10 }) {

                }.layoutWeight(1)
              }.width('100%')
            }.width('100%')
            .height(210)
            .backgroundColor(Color.White)
            .borderRadius(10)

            // 交通出行
            Column({ space: 20 }) {
              Text('交通出行')
                .margin({
                  left: 20,
                  top: 10
                })
                .fontColor(Color.Gray)
                .fontSize(18)
                .width('100%')
                .textAlign(TextAlign.Start)

              Row() {
                Column({ space: 10 }) {
                  Image($r('app.media.system_qr_code'))
                    .width(30)
                    .aspectRatio(1)
                    .fillColor(Color.Green)
                  Text('出行服务')
                    .fontSize(14)
                }.layoutWeight(1)

                Column({ space: 10 }) {
                  Image($r('app.media.system_qr_code'))
                    .width(30)
                    .aspectRatio(1)
                    .fillColor(Color.Green)
                  Text('火车票机票')
                    .fontSize(14)
                }.layoutWeight(1)

                Column({ space: 10 }) {
                  Image($r('app.media.system_qr_code'))
                    .width(30)
                    .aspectRatio(1)
                    .fillColor(Color.Green)
                  Text('滴滴出行')
                    .fontSize(14)
                }.layoutWeight(1)

                Column({ space: 10 }) {
                  Image($r('app.media.system_qr_code'))
                    .width(30)
                    .aspectRatio(1)
                    .fillColor(Color.Green)
                  Text('酒店')
                    .fontSize(14)
                }.layoutWeight(1)
              }.width('100%')
              .margin({
                left: 10,
                right: 10
              })
            }.width('100%')
            .height(130)
            .backgroundColor(Color.White)
            .borderRadius(10)

            // 购物消费
            Column({ space: 20 }) {
              Text('购物消费')
                .margin({
                  left: 20,
                  top: 10
                })
                .fontColor(Color.Gray)
                .fontSize(18)
                .width('100%')
                .textAlign(TextAlign.Start)

              Row() {
                Column({ space: 10 }) {
                  Image($r('app.media.system_qr_code'))
                    .width(30)
                    .aspectRatio(1)
                    .fillColor(Color.Green)
                  Text('品牌发现')
                    .fontSize(14)
                }.layoutWeight(1)

                Column({ space: 10 }) {
                  Image($r('app.media.system_qr_code'))
                    .width(30)
                    .aspectRatio(1)
                    .fillColor(Color.Green)
                  Text('京东购物')
                    .fontSize(14)
                }.layoutWeight(1)

                Column({ space: 10 }) {
                  Image($r('app.media.system_qr_code'))
                    .width(30)
                    .aspectRatio(1)
                    .fillColor(Color.Green)
                  Text('美团外卖')
                    .fontSize(14)
                }.layoutWeight(1)

                Column({ space: 10 }) {
                  Image($r('app.media.system_qr_code'))
                    .width(30)
                    .aspectRatio(1)
                    .fillColor(Color.Green)
                  Text('电影演出玩乐')
                    .fontSize(14)
                }.layoutWeight(1)

              }.width('100%')
              .margin({
                left: 10,
                right: 10
              })

              Row() {
                Column({ space: 10 }) {
                  Image($r('app.media.system_qr_code'))
                    .width(30)
                    .aspectRatio(1)
                    .fillColor(Color.Green)
                  Text('美团特价')
                    .fontSize(14)
                }.layoutWeight(1)

                Column({ space: 10 }) {
                  Image($r('app.media.system_qr_code'))
                    .width(30)
                    .aspectRatio(1)
                    .fillColor(Color.Green)
                  Text('拼多多')
                    .fontSize(14)
                }.layoutWeight(1)

                Column({ space: 10 }) {
                  Image($r('app.media.system_qr_code'))
                    .width(30)
                    .aspectRatio(1)
                    .fillColor(Color.Green)
                  Text('唯品会特卖')
                    .fontSize(14)
                }.layoutWeight(1)

                Column({ space: 10 }) {
                  Image($r('app.media.system_qr_code'))
                    .width(30)
                    .aspectRatio(1)
                    .fillColor(Color.Green)
                  Text('转转二手')
                    .fontSize(14)
                }.layoutWeight(1)
              }.width('100%')
            }.width('100%')
            .height(210)
            .backgroundColor(Color.White)
            .borderRadius(10)
          }
          .width('100%')
          .padding(10)
          .backgroundColor(Color.Gray)
        }
      }
    }.title('服务')
  }
}

@Builder
export function NavServiceFunc() {
  NavService()
}