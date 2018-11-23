class BaseException implements Exception {
  final String message;

  BaseException({this.message});

  String toString() {
    if (message == null) return "Exception";
    return "Exception: $message";
  }
}

class NonSuccessResponseException extends BaseException {
  int statusCode;
  NonSuccessResponseException(this.statusCode, {String message})
      : super(message: message);
}

class RequestTimeoutException extends BaseException {
  RequestTimeoutException({String message}) : super(message: message);
}
