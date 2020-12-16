
import 'package:base_project/models/repository.dart';
import 'package:flutter/material.dart';

class RepositoryWidget {

  TextField makeTextField(RepositoryList counter) {
    return TextField(
        decoration: InputDecoration(
            labelText: "GithubName",
            hintText: "ユーザーIDともいうかも"),
        onChanged:counter.handleSearchText
    );
  }

  RaisedButton makeRaisedButton(Future<void> action) {
    return RaisedButton(
        child: Text("取得"),
        color: Colors.lightBlue[200],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        onPressed:(){
          action;
        },
        padding: EdgeInsets.all(10)
    );
  }

  Text makeSpaceLabel() {
    return Text('',
      style: TextStyle(
        fontSize: 32.0,
        fontStyle: FontStyle.normal,
        letterSpacing: 4.0,
      ),
    );
  }

  Text makeRepositoryLabel() {
    return Text('リポジトリ一覧',
      style: TextStyle(
        fontSize: 14.0,
        fontStyle: FontStyle.normal,
        letterSpacing: 4.0,
      ),
    );
  }


}