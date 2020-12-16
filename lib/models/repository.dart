import 'package:base_project/apis/repos.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:state_notifier/state_notifier.dart';

part 'repository.freezed.dart';
part 'repository.g.dart';

final repositoryListProvider = StateNotifierProvider((_) => RepositoryList([]));
@freezed
abstract class Repository with _$Repository {
  factory Repository({
    //@required String id,
    @required String name,
    @required int id
}) = _Repository;
  factory Repository.fromJson(Map<String, dynamic> json) => _$RepositoryFromJson(json);
}

class RepositoryList extends StateNotifier<List<Repository>>  {
  RepositoryList(List<Repository> state) : super(state);
  String serachText = "";
  handleSearchText(String e) => {
    serachText = e
  };

  Future<void> getRepositoriesApi() async {
    state = await RepositoriesApi().getApi(serachText) ?? [];
  }
}