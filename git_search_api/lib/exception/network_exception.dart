import 'package:git_search_api/exception/app_exception.dart';

abstract class NetworkException implements AppException {
  @override
  String get message;
}

class OfflineException implements NetworkException {
  @override
  String get message => 'ネットワークを確認してください';
}

class ServerException implements NetworkException {
  final int statusCode;

  ServerException(this.statusCode);

  @override
  String get message => 'サーバーエラー (code: ${statusCode})';
}

class UnknownException implements NetworkException {
  @override
  String get message => '不明なエラー';
}
