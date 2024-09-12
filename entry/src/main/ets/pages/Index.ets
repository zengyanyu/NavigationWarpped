import { CommonRouterBuilder } from './Nav'

@Entry
@Component
struct Index {
  @Provide
  navPathStack: NavPathStack = new NavPathStack()

  build() {
    Navigation(this.navPathStack) {
      List({ space: 20 }) {
        ListItem() {
          Button('朋友圈')
            .onClick(() => {
              this.navPathStack.pushPath({
                name: 'friend'
              })
            })
        }.width('100%')

        ListItem() {
          Button('联系人')
            .onClick(() => {
              this.navPathStack.pushPath({
                name: 'connect'
              })
            })
        }.width('100%')

        ListItem() {
          Button('我的')
            .onClick(() => {
              this.navPathStack.pushPath({
                name: 'my'
              })
            })
        }.width('100%')

        ListItem() {
          Button('发现')
            .onClick(() => {
              this.navPathStack.pushPath({
                name: 'discover'
              })
            })
        }.width('100%')
      }
    }
    .navDestination(CommonRouterBuilder)
    .height('100%')
    .width('100%')
    .mode(NavigationMode.Stack)
  }
}