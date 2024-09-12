import { NavConnectFunc } from './views/NavConnect';
import { NavDiscoverFunc } from './views/NavDiscover';
import { NavFriendFunc } from './views/NavFriend';
import { NavMyFunc } from './views/NavMy';
import { NavServiceFunc } from './views/NavService';
import { NavSettingFunc } from './views/NavSetting';

const MapBuilder: Map<string, WrappedBuilder<[]>> = new Map()
MapBuilder.set("friend", wrapBuilder(NavFriendFunc))
MapBuilder.set("my", wrapBuilder(NavMyFunc))
MapBuilder.set("connect", wrapBuilder(NavConnectFunc))
MapBuilder.set("discover", wrapBuilder(NavDiscoverFunc))
MapBuilder.set("service", wrapBuilder(NavServiceFunc))
MapBuilder.set("setting", wrapBuilder(NavSettingFunc))

@Builder
export function CommonRouterBuilder(name: string) {
  // 根据name渲染不同的组件
  MapBuilder.get(name)?.builder(); // 不同的组件
}