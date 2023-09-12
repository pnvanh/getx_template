import 'package:get/get.dart';
import 'package:getx_template/app/core/base/base_controller.dart';
import 'package:getx_template/app/modules/main/models/nav_bar_item.dart';

class MainController extends BaseController {
  final _selectedNavBarItem = NavBarItem.HOME.obs;

  NavBarItem get selectedNavBarItem => _selectedNavBarItem.value;

  onNavBarItemSelected(NavBarItem itemCode) async {
    _selectedNavBarItem(itemCode);
  }
}
