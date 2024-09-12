@Component
struct NavDiscover {
  @Consume
  navPathStack: NavPathStack

  build() {
    NavDestination() {
      Text('发现')
    }.title('发现')
  }
}

@Builder
export function NavDiscoverFunc() {
  NavDiscover()
}