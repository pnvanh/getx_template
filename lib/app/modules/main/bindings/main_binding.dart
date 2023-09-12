import 'package:get/get.dart';
import 'package:getx_template/app/modules/modules.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainController>(
      () => MainController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );

    Get.lazyPut<FavoriteController>(
      () => FavoriteController(),
    );
  }
}
