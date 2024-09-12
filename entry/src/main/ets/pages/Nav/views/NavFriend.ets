@Component
struct NavFriend {
  @Consume
  navPathStack: NavPathStack

  build() {
    NavDestination() {
      Text('朋友圈')
    }.title('朋友圈')
  }
}

@Builder
export function NavFriendFunc() {
  NavFriend()
}