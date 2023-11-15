class AppGenericException implements Exception {
  AppGenericException([this.message = '', this.code, this.type, this.response]);

  final String? message;
  final String? type;
  final int? code;
  final dynamic response;

  /// Returns the error type, message, and code.
  @override
  String toString() {
    if (message == null || message == '') return 'AppGenericException';
    return "AppGenericException: ${type ?? ''}, $message (${code ?? 0})";
  }
}
