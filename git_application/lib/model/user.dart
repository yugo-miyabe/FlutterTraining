import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../freezed/user.freezed.dart';

part '../freezed/user.g.dart';

@freezed
class User with _$User {
  const factory User(String login, String avatarUrl) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
