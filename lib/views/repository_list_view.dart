import 'package:base_project/utils/progress_dialog.dart';
import 'package:flutter/material.dart';
import 'package:base_project/utils/alret.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../models/repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class RepositoryListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RepositoryListPage();
  }
}

class RepositoryListPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final counter = useProvider(repositoryListProvider);
    final state = useProvider(repositoryListProvider.state);
    return Scaffold(
      appBar: AppBar(
        title: Text("リポジトリ取得画面"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child:Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                    labelText: "GithubName",
                    hintText: "ユーザーIDともいうかも"),
                onChanged:counter.handleSearchText
              ),
              Text('',
                style: TextStyle(
                  fontSize: 32.0,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 4.0,
                ),
              ),
              RaisedButton(
                  child: Text("取得"),
                  color: Colors.lightBlue[200],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  onPressed: () async {
                    // プログレスインジケーター
                    ProgressDialog.showProgressDialog(context);
                    await counter.getRepositoriesApi();
                    Navigator.of(context).pop();
                    if (counter.state.length == 0) {
                      AlertUtil.showOkAlertDialog(context, "API情報確認", "更新失敗");
                    } else {
                      AlertUtil.showOkAlertDialog(context, "API情報確認", "更新成功");
                    }
                  },
                  padding: EdgeInsets.all(10)
              ),
              Text('',
                style: TextStyle(
                  fontSize: 32.0,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 4.0,
                ),
              ),
              Text('リポジトリ一覧',
                style: TextStyle(
                  fontSize: 14.0,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 4.0,
                ),
              ),
        Expanded(
            child: ListView.builder(
                physics: AlwaysScrollableScrollPhysics(),
                itemCount: state.length ?? 0,
                itemBuilder: (BuildContext context, int i) {
                  return ListTile(
                    title: Text( state[i].name ?? ""),
                  );
                },
              ),
          ),
        ]
      ))
    );
  }
}