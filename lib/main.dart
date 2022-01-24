import 'package:flutter_app/next_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final items = List<String>.generate(10000, (i) => 'Item $i');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Text(widget.title),
        actions:<Widget>[
          Icon(Icons.add),
          Icon(Icons.share),
        ],
      ),
      body: Container(
        width: double.infinity,
        child: ListView(
          // This next line does the trick.
          // scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              width: 160.0,
              height: 100,
              color: Colors.red,
            ),
            Container(
              width: 160.0,
              height: 100,
              color: Colors.blue,
            ),
            Container(
              width: 160.0,
              height: 100,
              color: Colors.green,
            ),
            Container(
              width: 160.0,
              height: 100,
              color: Colors.yellow,
            ),
            Container(
              width: 160.0,
              height: 100,
              color: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}
