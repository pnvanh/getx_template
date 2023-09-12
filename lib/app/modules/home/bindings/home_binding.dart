import 'package:get/get.dart';
import 'package:getx_template/app/data/repositories/new_repository_implement.dart';
import 'package:getx_template/app/data/repositories/news_repository.dart';
import 'package:getx_template/app/modules/home/home.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<NewsRepository>(
      () => NewRepositoryImplement(),
      tag: (NewsRepository).toString(),
    );
  }
}
