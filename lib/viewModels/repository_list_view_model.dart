import 'package:base_project/apis/repos.dart';
import 'package:flutter/foundation.dart';
import 'package:base_project/models/repository.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'repository_list_view_model.freezed.dart';
part 'repository_list_view_model.g.dart';

@freezed
abstract class RepositoryListViewState with _$RepositoryListViewState {
  const factory RepositoryListViewState({
    @Default("") String name,
    @Default([]) List list,
    @Default(0) int count
  }) = _RepositoryListViewState;
  factory RepositoryListViewState.fromJson(Map<String, dynamic> json) => _$RepositoryListViewStateFromJson(json);
}

class RepositoryListViewModel extends StateNotifier<RepositoryListViewState> {
  RepositoryListViewModel(): super(const RepositoryListViewState()) {}
  handleSearchText(String e) => state = state.copyWith(name: e);
  Future<void> getRepositoriesApi() async {
    var list = await RepositoriesApi().getApi(state.name) ?? [];
    state = state.copyWith(list: list);
  }
}