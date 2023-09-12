import 'package:getx_template/flavor/build_config.dart';

enum ApiUrl {
  topHeadlines,
}

extension ApiUrlPath on ApiUrl {
  static final String baseUrl = BuildConfig.instance.config.baseUrl;

  String get path {
    switch (this) {
      case ApiUrl.topHeadlines:
        return baseUrl + '/v2/top-headlines';
    }
  }
}
