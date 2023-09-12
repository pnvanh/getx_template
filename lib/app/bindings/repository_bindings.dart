import 'package:get/get.dart';
import 'package:getx_template/app/data/repositories/new_repository_implement.dart';
import 'package:getx_template/app/data/repositories/news_repository.dart';

class RepositoryBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewsRepository>(
      () => NewRepositoryImplement(),
      tag: (NewsRepository).toString(),
    );
  }
}
