import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'package:getx_template/app/core/base/base_view.dart';
import 'package:getx_template/app/modules/main/models/nav_bar_item.dart';
import 'package:getx_template/app/modules/main/views/bottom_nav_bar_view.dart';
import 'package:getx_template/app/modules/modules.dart';

class MainView extends BaseView<MainController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return null;
  }

  @override
  Widget body(BuildContext context) {
    return Container(
      child: Obx(
        () => getPageOnSelectedNavBarItem(controller.selectedNavBarItem),
      ),
    );
  }

  @override
  Widget? bottomNavigationBar() {
    return BottomNavItemView(
      onNavBarItemSelected: controller.onNavBarItemSelected,
    );
  }

  Widget getPageOnSelectedNavBarItem(NavBarItem item) {
    switch (item) {
      case NavBarItem.HOME:
        return HomeView();
      case NavBarItem.DISCOVER:
        return FavoriteView();
      default:
        return Container();
    }
  }
}
