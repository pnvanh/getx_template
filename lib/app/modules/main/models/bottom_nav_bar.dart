import 'package:getx_template/app/core/values/app_icons.dart';
import 'package:getx_template/app/modules/main/models/nav_bar_item.dart';

class BottomNavItem {
  final String title;
  final String iconName;
  final NavBarItem code;

  const BottomNavItem({
    required this.title,
    required this.iconName,
    required this.code,
  });
}

List<BottomNavItem> bottomNavItems = [
  BottomNavItem(
    title: NavBarItem.HOME.name,
    iconName: AppIcons.home,
    code: NavBarItem.HOME,
  ),
  BottomNavItem(
    title: NavBarItem.DISCOVER.name,
    iconName: AppIcons.discover,
    code: NavBarItem.DISCOVER,
  )
];
