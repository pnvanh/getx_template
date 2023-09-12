import 'package:get/get.dart';
import 'package:getx_template/app/data/local/preference/preference_manager.dart';
import 'package:getx_template/app/data/local/preference/preference_manager_implement.dart';

class LocalSourceBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PreferenceManager>(
      () => PreferenceManagerImplement(),
      tag: (PreferenceManager).toString(),
      fenix: true,
    );
  }
}
