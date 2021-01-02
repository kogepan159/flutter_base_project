import 'package:base_project/utils/progress_dialog.dart';
import 'package:base_project/widgets/repository_widget.dart';
import 'package:flutter/material.dart';
import 'package:base_project/utils/alret.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../models/repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class RepositoryPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final counter = useProvider(repositoryListProvider);
    final state = useProvider(repositoryListProvider.state);
    final repositoryWidget = RepositoryWidget();

    String _data = "Load JSON Data";
    Future<void> loadJsonAsset() async {
      _data = "";
      String loadData = await rootBundle.loadString('json/import.json');
      final jsonResponse = json.decode(loadData);
      jsonResponse.forEach((key,value) => _data = _data + '$key: $value \x0A');
      print("-----------------------");
      //全体を表示する
      print(_data);
      // resultsのdefinitionを取得
      for (var result in jsonResponse["results"]) {
        print("配列中身見る:" + result["definition"]);
      }
      print("-----------------------");
    }

    return Scaffold(
        appBar: AppBar(
          title: Text("リポジトリ取得画面"),
        ),
        body: Padding(
            padding: EdgeInsets.all(16.0),
            child:Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  repositoryWidget.makeTextField(counter),
                  repositoryWidget.makeSpaceLabel(),
                  RaisedButton(
                      child: Text("取得"),
                      color: Colors.lightBlue[200],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      onPressed: () async {
                        await loadJsonAsset();
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
                  repositoryWidget.makeSpaceLabel(),
                  repositoryWidget.makeRepositoryLabel(),
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