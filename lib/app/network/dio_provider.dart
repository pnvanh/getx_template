import 'package:dio/dio.dart';
import 'package:getx_template/app/network/pretty_dio_logger.dart';
import 'package:getx_template/app/network/request_header_interceptor.dart';

import 'package:getx_template/flavor/build_config.dart';
import 'package:getx_template/flavor/environment.dart';

class DioProvider {
  static final String baseUrl = BuildConfig.instance.config.baseUrl;

  static const _maxLineWidth = 90;

  static final _prettyDioLogger = PrettyDioLogger(
    requestHeader: true,
    requestBody: true,
    responseBody:
        BuildConfig.instance.environmentType == EnvironmentType.DEVELOPMENT,
    responseHeader: false,
    error: true,
    compact: true,
    maxWidth: _maxLineWidth,
  );

  static final BaseOptions _options = BaseOptions(
    baseUrl: baseUrl,
    connectTimeout: Duration(seconds: 60),
    receiveTimeout: Duration(seconds: 60),
  );

  static Dio _instance = Dio(_options);

  static _addInterceptors() {
    _instance.interceptors.clear();
    _instance.interceptors.add(RequestHeaderInterceptor());
    _instance.interceptors.add(_prettyDioLogger);
  }

  ///returns a Dio client with Access token in header
  static Dio get tokenClient {
    _addInterceptors();

    return _instance;
  }

  static String _buildContentType(String version) {
    return "user_defined_content_type+$version";
  }

  DioProvider.setContentType(String version) {
    _instance.options.contentType = _buildContentType(version);
  }

  DioProvider.setContentTypeApplicationJson() {
    _instance.options.contentType = "application/json";
  }
}
