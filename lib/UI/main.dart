import 'package:flutter/material.dart';
import 'package:flutter_myapp/UI/signin_screen/signin_screen.dart';

import 'home_screen/home_screen.dart';

void main() {
  runApp(
    MaterialApp(home: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('ここでログイン済かはんだん'),
              Text('ログイン済ならHomePage'),
              Text('未ログインならログイン/新規登録ページ'),
              RaisedButton(
                  child: Text('GO'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  }),
              RaisedButton(
                  child: Text('ログインページ'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SigninPage()),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
