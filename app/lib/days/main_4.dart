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
      body: Tabs(),
    );
  }
}

class Tabs extends StatefulWidget {
  final message = '从父级继承过来的值';
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      width: 200,
      height: 200,
      padding: EdgeInsets.all(10),
      alignment: Alignment.center,
      child: Text(
        '测试',
        style: TextStyle(color: Colors.white, fontSize: 25),
      ),
      decoration: BoxDecoration(
          color: Colors.red,
          border: Border.all(width: 5),
          borderRadius: BorderRadius.circular(100),
          boxShadow: [
            BoxShadow(
                color: Colors.blue,
                offset: Offset(10, 10),
                spreadRadius: 5,
                blurRadius: 10),
            BoxShadow(
                color: Colors.yellow,
                offset: Offset(-10, 10),
                spreadRadius: 5,
                blurRadius: 10)
          ]),
    );
  }
}

/**
 * 生命周期
 * 1. 状态发生改变就会调用build方法
 * Align(
       alignment: Alignment(1, 1),
      child: Text(
        '测试',
        style: TextStyle(color: Colors.red),
      ),
    );
 *  */
