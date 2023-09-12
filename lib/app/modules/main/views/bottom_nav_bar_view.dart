import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:getx_template/app/core/values/values.dart';
import 'package:getx_template/app/core/widgets/elevated_container.dart';

import 'package:getx_template/app/modules/main/controllers/bottom_nav_bar_controller.dart';
import 'package:getx_template/app/modules/main/models/bottom_nav_bar.dart';
import 'package:getx_template/app/modules/main/models/nav_bar_item.dart';

class BottomNavItemView extends StatelessWidget {
  BottomNavItemView({
    Key? key,
    required this.onNavBarItemSelected,
  }) : super(key: key);
  final Function(NavBarItem itemCode) onNavBarItemSelected;

  final navController = BottomNavItemController();

  final Key bottomNavKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    AppLocalizations _ = AppLocalizations.of(context);

    return Obx(
      () => ElevatedContainer(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(AppValues.radius_25),
          topLeft: Radius.circular(AppValues.radius_25),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(AppValues.radius_25),
            topLeft: Radius.circular(AppValues.radius_25),
          ),
          child: BottomNavigationBar(
            key: bottomNavKey,
            items: bottomNavItems
                .map(
                  (BottomNavItem navItem) => BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      navItem.iconName,
                      height: AppValues.icon_20,
                      width: AppValues.icon_20,
                      colorFilter: ColorFilter.mode(
                        bottomNavItems.indexOf(navItem) ==
                                navController.selectedIndex
                            ? AppColors.colorPrimary
                            : AppColors.colorPrimary.shade100,
                        BlendMode.srcIn,
                      ),
                    ),
                    label: navItem.title,
                  ),
                )
                .toList(),
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: AppColors.colorPrimary,
            unselectedItemColor: AppColors.colorPrimary.shade100,
            currentIndex: navController.selectedIndex,
            type: BottomNavigationBarType.fixed,
            onTap: (index) {
              navController.updateSelectedIndex(index);
              onNavBarItemSelected(
                bottomNavItems[index].code,
              );
            },
          ),
        ),
      ),
    );
  }
}
