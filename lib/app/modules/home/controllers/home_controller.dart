import 'package:get/get.dart';
import 'package:getx_template/app/core/base/base_controller.dart';
import 'package:getx_template/app/core/model/news_params.dart';
import 'package:getx_template/app/data/model/news.dart';
import 'package:getx_template/app/data/repositories/news_repository.dart';
import 'package:getx_template/app/modules/home/models/articles_ui_data.dart';
import 'package:getx_template/flavor/build_config.dart';

class HomeController extends BaseController {
  final logger = BuildConfig.instance.config.logger;

  final NewsRepository _repository = Get.find(tag: (NewsRepository).toString());

  final RxList<ArticlesUiData> _newsListController = RxList.empty();

  List<ArticlesUiData> get articlesList => _newsListController.toList();

  @override
  void onInit() {
    super.onInit();
    getNewsList();
  }

  void getNewsList() {
    var params = NewsParams(
      apiKey: '53c2da3c9871422baa7814303c60b6fe',
      country: 'us',
      pageSize: 10,
      page: 1,
    );

    var topHeadlinesService = _repository.fetchTopHeadlines(params);

    callDataService(topHeadlinesService,
        onSuccess: _handleNewsListResponseSuccess);
  }

  void _handleNewsListResponseSuccess(NewsResponse response) {
    List<ArticlesUiData>? articlesList = response.articles
        ?.where((e) => e.urlToImage != null)
        .map((e) => ArticlesUiData(
            source: SourceUiData(id: e.source?.id, name: e.source?.name),
            author: e.author,
            title: e.title,
            description: e.title,
            url: e.url,
            urlToImage: e.urlToImage,
            publishedAt: e.publishedAt,
            content: e.content))
        .toList();

    _newsListController(articlesList);
  }

  // onLoadMore() {}
}
