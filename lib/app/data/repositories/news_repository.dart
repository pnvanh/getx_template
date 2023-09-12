import 'package:getx_template/app/core/model/news_params.dart';
import 'package:getx_template/app/data/model/news.dart';

abstract class NewsRepository {
  Future<NewsResponse> fetchTopHeadlines(NewsParams params);
}
