import 'package:flutter/material.dart';

class NextPage extends StatelessWidget{
  NextPage(this.name);
  String name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('2ページ目'),
      ),
      body: Container(
        height: double.infinity,
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(name),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    //ここに押したら反応するコードを書く（画面遷移）
                    Navigator.pop(context, 'Hello！');
                  },
                  child: Text('戻る')
              ),
            ),
          ],
        ),
      ),
    );
  }
}