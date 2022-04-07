import 'dart:io';

import 'package:git_search_api/exception/app_exception.dart';

abstract class NetworkException implements AppException {
  factory NetworkException.offline() = OfflineException;

  factory NetworkException.severError() = ServerException;

  factory NetworkException.unknown() = UnknownException;

  static NetworkException parseSystemException(Exception exception) {
    if (exception is SocketException) {
      return NetworkException.offline();
    } else {
      return NetworkException.unknown();
    }
  }
}

class OfflineException implements NetworkException {}

class ServerException implements NetworkException {}

class UnknownException implements NetworkException {}
