import { commonEventManager } from "@kit.BasicServicesKit";
import { promptAction } from "@kit.ArkUI";

class SubscriberClass {
  // 1.订阅者
  subscriber?: commonEventManager.CommonEventSubscriber

  // 2.发布
  publish(event: string, data: string) {
    commonEventManager.publish(event, { data }, () => {
      // 发送成功后的回调函数
    })
  }

  // 3.订阅(需要订阅者)
  async subscribe(event: string, callBack: (event: string) => void) {
    // 3.创建订阅者
    this.subscriber = await commonEventManager.createSubscriberSync({ events: [event] })
    if (this.subscriber) {
      // 事件的订阅
      commonEventManager.subscribe(this.subscriber, (err, data) => {
        if (err) {
          return promptAction.showToast({
            message: '订阅事件失败'
          })
        }
        if (data.data) {
          // 返回给调用监听的人
          // 调用回调函数
          callBack(data.data)
        }
      })
    }
  }
}

export const subscriberClass = new SubscriberClass();