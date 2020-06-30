import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('测试'),
      ),
      body: ListView(
          itemExtent: 50,  // 行高
          children: List.generate(100, (index) {
            return ListTile(
              leading: Icon(Icons.favorite), // 前面icon
              trailing: Icon(Icons.security), // 后面icon
              title: Text('thong$index'),
              subtitle: Text('测试'),
            );
          })),
    );
  }
}

class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: List.generate(100, (index) {
      return ListTile(
        title: Text('thong$index'),
      );
    }));
  }
}
