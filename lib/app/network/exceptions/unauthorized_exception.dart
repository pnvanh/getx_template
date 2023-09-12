import 'dart:io';

import 'package:getx_template/app/network/exceptions/base_api_exception.dart';

class UnauthorizedException extends BaseApiException {
  UnauthorizedException(String message)
      : super(
          httpCode: HttpStatus.unauthorized,
          message: message,
          status: "Unauthorized",
        );
}
