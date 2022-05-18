class ErrorCode {
  static const String DATA_NULL = "-1";
}

class ApiException implements Exception {
  int? code;
  String? serverErrorCode;
  String? message;
  Object? data;
  Exception? innerException;
  StackTrace? stackTrace;

  ApiException({this.code, this.serverErrorCode, this.message, this.data});

  ApiException.withInner(this.code, this.message, this.innerException, this.stackTrace);

  String toString() {
    if (message == null) return "ApiException";

    if (innerException == null) {
      return "ApiException $code: $serverErrorCode: $message";
    }

    return "ApiException $code: $serverErrorCode: $message (Inner exception: $innerException)\n\n" +
        stackTrace.toString();
  }
}

class ValidateException implements Exception {
  String? code;
  String? message;
  ValidateException({this.code, this.message});
}

class NetworkException implements Exception {}
