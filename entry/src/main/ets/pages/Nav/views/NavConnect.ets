@Component
struct NavConnect {
  @Consume
  navPathStack: NavPathStack

  build() {
    NavDestination() {
      Text('联系人')
    }.title('联系人')
  }
}

@Builder
export function NavConnectFunc() {
  NavConnect()
}