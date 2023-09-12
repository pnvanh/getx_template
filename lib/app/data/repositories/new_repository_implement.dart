import 'package:get/get.dart';
import 'package:getx_template/app/data/model/news.dart';
import 'package:getx_template/app/core/model/news_params.dart';
import 'package:getx_template/app/data/remote/news_remote_data_source.dart';
import 'package:getx_template/app/data/repositories/news_repository.dart';

class NewRepositoryImplement implements NewsRepository {
  @override
  Future<NewsResponse> fetchTopHeadlines(NewsParams params) {
    final NewsRemoteDataSource _remoteDataSource =
        Get.find(tag: (NewsRemoteDataSource).toString());

    return _remoteDataSource.fetchTopHeadlines(params);
  }
}
