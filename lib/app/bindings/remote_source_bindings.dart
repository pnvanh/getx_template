import 'package:get/get.dart';
import 'package:getx_template/app/data/remote/news_remote_data_source.dart';
import 'package:getx_template/app/data/remote/news_remote_data_source_implement.dart';

class RemoteSourceBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewsRemoteDataSource>(() => NewsRemoteDataSourceImplement(),
        tag: (NewsRemoteDataSource).toString());
  }
}
