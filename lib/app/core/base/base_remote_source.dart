import 'package:dio/dio.dart';
import 'package:get/get_connect/http/src/status/http_status.dart';
import 'package:getx_template/app/network/dio_provider.dart';
import 'package:getx_template/app/network/error_handlers.dart';
import 'package:getx_template/app/network/exceptions/base_exception.dart';
import 'package:getx_template/flavor/build_config.dart';

abstract class BaseRemoteSource {
  Dio get dioClient => DioProvider.tokenClient;

  final logger = BuildConfig.instance.config.logger;

  Future<Response<T>> callApiWithErrorParser<T>(Future<Response<T>> api) async {
    try {
      Response<T> response = await api;

      if (response.statusCode != HttpStatus.ok ||
          (response.data as Map<String, dynamic>)['statusCode'] !=
              HttpStatus.ok) {
        // TODOs handle it
      }

      // return response
      return response;
    } on DioException catch (dioException) {
      Exception exception = handleDioError(dioException);
      logger.e(
          "Throwing error from repository: >>>>>>> $exception : ${(exception as BaseException).message}");
      throw exception;
    } catch (error) {
      logger.e("Generic error: >>>>>>> $error");

      if (error is BaseException) {
        rethrow;
      }

      throw handleError("$error");
    }
  }
}
