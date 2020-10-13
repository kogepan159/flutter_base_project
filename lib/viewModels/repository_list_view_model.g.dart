// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository_list_view_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RepositoryListViewState _$_$_RepositoryListViewStateFromJson(
    Map<String, dynamic> json) {
  return _$_RepositoryListViewState(
    name: json['name'] as String ?? '',
    list: json['list'] as List ?? [],
    count: json['count'] as int ?? 0,
  );
}

Map<String, dynamic> _$_$_RepositoryListViewStateToJson(
        _$_RepositoryListViewState instance) =>
    <String, dynamic>{
      'name': instance.name,
      'list': instance.list,
      'count': instance.count,
    };
