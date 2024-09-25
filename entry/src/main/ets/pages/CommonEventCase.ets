import { subscriberClass } from '../utils'
import { promptAction } from '@kit.ArkUI'

@Entry
@Component
struct CommonEventCase {
  @State
  message: string = ''

  aboutToAppear(): void {
    promptAction.showToast({
      message: '进来没?'
    })
    // 订阅:subscribe
    subscriberClass.subscribe('appUpdate', (event) => {
      this.message = event
    })
  }

  build() {
    Column() {
      Text("message" + this.message)
      Button('通知卡片')
        .onClick(() => {
          // 发布:publish
          subscriberClass.publish('cardUpdate', Math.random().toFixed(2))
        })
    }
    .height('100%')
    .width('100%')
  }
}