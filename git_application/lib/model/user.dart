import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../freezed/user.freezed.dart';

@freezed
class User with _$User {
  const factory User(String login, String avatorUrl) = _User;
}
