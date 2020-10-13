import 'package:base_project/models/repository.dart';
import 'package:base_project/utils/progress_dialog.dart';
import 'package:flutter/material.dart';
import 'package:base_project/utils/alret.dart';
import 'package:base_project/viewModels/repository_list_view_model.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

class RepositoryListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return StateNotifierProvider<RepositoryListViewModel, RepositoryListViewState>(
        create: (_) => RepositoryListViewModel(),
        child:RepositoryListPage()
    );
    // Here we take the value from the MyHomePage object that was created by);
  }
}

class RepositoryListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
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
                onChanged:context.watch<RepositoryListViewModel>().handleSearchText
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
                    await context.read<RepositoryListViewModel>().getRepositoriesApi();
                    Navigator.of(context).pop();
                    if (context.read<RepositoryListViewState>().list.length == 0) {
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
                itemCount: context.select<RepositoryListViewState, int>((RepositoryListViewState state) => state.list?.length ?? 0),
                itemBuilder: (BuildContext context, int i) {
                  return ListTile(
                    title: Text( context.read<RepositoryListViewState>().list[i].name ?? ""),
                  );
                },
              ),
          ),
        ]
      ))
    );
  }
}