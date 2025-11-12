class ServerException implements Exception {
  ServerException([this.message = 'Server error occurred']);

  final String message;

  @override
  String toString() => message;
}

class CacheException implements Exception {
  CacheException([this.message = 'Cache error occurred']);

  final String message;

  @override
  String toString() => message;
}

class NetworkException implements Exception {
  NetworkException([this.message = 'Network error occurred']);

  final String message;

  @override
  String toString() => message;
}

class AuthException implements Exception {
  AuthException([this.message = 'Authentication error occurred']);

  final String message;

  @override
  String toString() => message;
}

class ValidationException implements Exception {
  ValidationException([this.message = 'Validation error occurred']);

  final String message;

  @override
  String toString() => message;
}
