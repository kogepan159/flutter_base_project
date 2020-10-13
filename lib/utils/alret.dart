
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AlertUtil {

  static Future<void> showOkAlertDialog(context, String title, String content) async {
    await showDialog<int>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: <Widget>[
            FlatButton(
              child: Text('OK'),
              onPressed: () => Navigator.of(context).pop(0),
            )
          ],
        );
      },
    );
  }
}
