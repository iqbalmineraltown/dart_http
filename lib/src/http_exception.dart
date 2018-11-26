import 'package:http/http.dart' show Response;

class BaseException implements Exception {
  final String message;

  BaseException({this.message});

  String toString() {
    if (message == null) return "Exception";
    return "Exception: $message";
  }
}

class NonSuccessResponseException extends BaseException {
  Response response;
  NonSuccessResponseException(this.response, {String message})
      : super(message: message);
}

class RequestTimeoutException extends BaseException {
  RequestTimeoutException({String message}) : super(message: message);
}
