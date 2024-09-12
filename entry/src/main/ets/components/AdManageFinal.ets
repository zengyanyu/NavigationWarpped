// 广告的最终解决方案
import { ComponentContent, promptAction, window } from '@kit.ArkUI'
import { util } from '@kit.ArkTS'

@Builder
function AdBuilder(ad: AdvertClass) {
  Column() {
    Image(ad.adImg)
      .width('100%')
      .height('100%')
      .objectFit(ImageFit.Cover)
      .borderRadius(10)

    Row() {
      Text('×')
        .width('100%')
        .aspectRatio(1)
        .fontColor(Color.Gray)
        .textAlign(TextAlign.Center)
    }
    .width(30)
    .aspectRatio(1)
    .borderRadius(15)
    .justifyContent(FlexAlign.Center)
    .border({
      color: '#888',
      width: 2
    })
    .margin({
      top: 40
    })
    .onClick(() => {
      // 判断有弹层的名称,才关闭广告
      if (ad.dialogName) {
        adManageFinal.closeAd(ad.dialogName)
      }
    })
  }
  .width(ad.isFull ? '100%' : '50%')
  .height(ad.isFull ? '100%' : '50%')
}

export class AdvertClass {
  showAd: boolean = false // 是否展示广告
  isFull: boolean = true //是否全屏
  adTime: number = 5 //倒计时数据
  adUrl: string = '' //要跳转的链接
  adImg: ResourceStr =
    'https://img0.baidu.com/it/u=574648196,1264024000&fm=253&fmt=auto&app=120&f=JPEG?w=500&h=500' // 图片链接
  dialogName?: string = ''
}

// 默认广告的参数
export const defaultAd: AdvertClass = {
  showAd: true, // 显示广告
  adTime: 5, // 广告时长
  adUrl: '', // 广告链接
  adImg: 'https://img0.baidu.com/it/u=574648196,1264024000&fm=253&fmt=auto&app=120&f=JPEG?w=500&h=500', // 图片链接
  isFull: false //是否全屏
}

export class AdManageFinal {
  context?: Context
  private map: Map<string, ComponentContent<AdvertClass>> = new Map();

  // 实际上需要广告
  async showAd(ad: AdvertClass) {
    // 生成一个name
    let name = `dialog_${util.generateRandomUUID()}`;
    const mainWin = await window.getLastWindow(this.context || getContext());
    let uiContext = mainWin.getUIContext();
    let promptAction = uiContext.getPromptAction();
    let contentNode = new ComponentContent(uiContext, wrapBuilder(AdBuilder), ad);
    let options: promptAction.BaseDialogOptions = {
      alignment: DialogAlignment.Center,
      // 广告设置为不自动关闭
      autoCancel: false
    }
    ad.dialogName = name;
    // 给map设置值
    this.map.set(name, contentNode)
    promptAction.openCustomDialog(contentNode, options)
  }

  // 关闭广告
  async closeAd(name: string) {
    if (name) {
      const mainWin = await window.getLastWindow(this.context || getContext());
      let uiContext = mainWin.getUIContext();
      let promptAction = uiContext.getPromptAction();
      // 关闭广告
      promptAction.closeCustomDialog(this.map.get(name))
      // 清除map
      this.map.delete(name)
    }
  }
}

export const adManageFinal = new AdManageFinal()