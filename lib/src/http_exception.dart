/// Extend this class to create more specific exception
class BaseException implements Exception {
  final String message;

  BaseException({this.message});

  String toString() {
    if (message == null) return "Exception";
    return "Exception: $message";
  }
}

/// Example of common exception

class RequestTimeoutException extends BaseException {
  RequestTimeoutException({String message}) : super(message: message);
}
