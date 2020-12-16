import 'package:base_project/utils/progress_dialog.dart';
import 'package:base_project/widgets/repository_widget.dart';
import 'package:flutter/material.dart';
import 'package:base_project/utils/alret.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../models/repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RepositoryPage extends HookWidget {

  @override
  Widget build(BuildContext context) {
    final counter = useProvider(repositoryListProvider);
    final state = useProvider(repositoryListProvider.state);
    final repositoryWidget = RepositoryWidget();
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
                  repositoryWidget.makeRaisedButton(getAction(context, counter)),
                  repositoryWidget.makeSpaceLabel(),
                  repositoryWidget.makeRepositoryLabel(),
                  Expanded(
                    child: ListView.builder(
                      physics: AlwaysScrollableScrollPhysics(),
                      itemCount: state.length ?? 0,
                      itemBuilder: (BuildContext context, int i) {
                        return ;
                      },
                    ),
                  ),
                ]
            ))
    );
  }

  Future<void> getAction(BuildContext context, RepositoryList counter) async {
    // プログレスインジケーター
    ProgressDialog.showProgressDialog(context);
    await counter.getRepositoriesApi();
    Navigator.of(context).pop();
    if (counter.state.length == 0) {
      AlertUtil.showOkAlertDialog(context, "API情報確認", "更新失敗");
    } else {
      AlertUtil.showOkAlertDialog(context, "API情報確認", "更新成功");
    }
  }
}