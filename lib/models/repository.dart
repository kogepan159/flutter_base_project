import 'package:base_project/apis/repos.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/all.dart';

part 'repository.freezed.dart';
part 'repository.g.dart';

final repositoryProvider = Provider((_) => Repository(name: 'aa', id: 111));

@freezed
abstract class Repository with _$Repository {
  factory Repository({
    //@required String id,
    @required String name,
    @required int id
}) = _Repository;
  factory Repository.fromJson(Map<String, dynamic> json) => _$RepositoryFromJson(json);
}


final repositoryList = RepositoryList();

class RepositoryList {
   List<Repository>  list = [];
   String serachText = "";
   handleSearchText(String e) => {
     serachText = e
   };

   Future<void> getRepositoriesApi() async {
     this.list = await RepositoriesApi().getApi(serachText) ?? [];
   }


}