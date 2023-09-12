import 'package:get/get.dart';
import 'package:getx_template/app/core/base/base_controller.dart';

class BottomNavItemController extends BaseController {
  final _selectedIndexController = 0.obs;

  updateSelectedIndex(int index) => _selectedIndexController(index);

  int get selectedIndex => _selectedIndexController.value;
}
