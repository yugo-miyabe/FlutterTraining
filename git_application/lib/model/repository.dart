import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../freezed/repository.freezed.dart';
part '../freezed/repository.g.dart';

@freezed
class Repository with _$Repository {
  const factory Repository(
    String name,
    String fullName,
    String htmlUrl,
    String createdAt,
    String updatedAt,
    String stargazersCount,
    String description,
  ) = _Repository;

  factory Repository.fromJson(Map<String, dynamic> json) => _$RepositoryFromJson(json);
}
