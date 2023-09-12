import 'package:getx_template/app/core/base/base_remote_source.dart';
import 'package:getx_template/app/core/values/api_url.dart';
import 'package:getx_template/app/data/model/news.dart';
import 'package:getx_template/app/core/model/news_params.dart';
import 'package:getx_template/app/data/remote/news_remote_data_source.dart';

class NewsRemoteDataSourceImplement extends BaseRemoteSource
    implements NewsRemoteDataSource {
  @override
  Future<NewsResponse> fetchTopHeadlines(NewsParams params) {
    var dioCall = dioClient.get(ApiUrl.topHeadlines.path,
        queryParameters: params.toJson());

    try {
      return callApiWithErrorParser(dioCall)
          .then((response) => NewsResponse.fromJson(response.data));
    } catch (e) {
      rethrow;
    }
  }
}
