// 接收卡片更新信息
const localStorage = new LocalStorage()

/**
 * 卡片
 */
@Entry(localStorage)
@Component
struct WidgetCard {
  @LocalStorageProp('value')
  value: string = ''

  build() {
    Column() {
      Text('我是卡片' + this.value)
      Button('我是按钮')
        .onClick(() => {
          postCardAction(this, {
            action: 'message',
            params: {
              value: "********************"
            }
          })
        })
    }
  }
}