import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../freezed/repository.freezed.dart';

part '../freezed/repository.g.dart';

@freezed
class Repository with _$Repository {
  const factory Repository(
    String name,
    String full_name,
    String html_url,
    String created_at,
    String updated_at,
    int stargazers_count,
    String? description,
  ) = _Repository;

  factory Repository.fromJson(Map<String, dynamic> json) =>
      _$RepositoryFromJson(json);
}
