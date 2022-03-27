// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../model/repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Repository _$$_RepositoryFromJson(Map<String, dynamic> json) =>
    _$_Repository(
      json['name'] as String,
      json['full_name'] as String,
      json['html_url'] as String,
      json['created_at'] as String,
      json['updated_at'] as String,
      json['stargazers_count'] as int,
      json['description'] as String?,
    );

Map<String, dynamic> _$$_RepositoryToJson(_$_Repository instance) =>
    <String, dynamic>{
      'name': instance.name,
      'full_name': instance.full_name,
      'html_url': instance.html_url,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'stargazers_count': instance.stargazers_count,
      'description': instance.description,
    };
