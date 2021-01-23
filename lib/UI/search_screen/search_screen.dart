import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('ここは検索結果'),
            Text('ログインしているユーザー'),
            Text('かつ'),
            Text('検索したワードで学習中のユーザー'),
            Text('を表示'),
            Text('多分firestore使う'),
            RaisedButton(
                child: Text('戻る'),
                onPressed: () {
                  Navigator.pop(context);
                }),
          ],
        ),
      ),
    );
  }
}
