// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../model/repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Repository _$$_RepositoryFromJson(Map<String, dynamic> json) =>
    _$_Repository(
      json['name'] as String,
      json['fullName'] as String,
      json['htmlUrl'] as String,
      json['createdAt'] as String,
      json['updatedAt'] as String,
      json['stargazersCount'] as String,
      json['description'] as String,
    );

Map<String, dynamic> _$$_RepositoryToJson(_$_Repository instance) =>
    <String, dynamic>{
      'name': instance.name,
      'fullName': instance.fullName,
      'htmlUrl': instance.htmlUrl,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'stargazersCount': instance.stargazersCount,
      'description': instance.description,
    };
