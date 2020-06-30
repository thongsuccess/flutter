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
  @override
  _TabsState createState() => _TabsState();
}

/*
 * mainAxisAlignment
 * start 开始位置摆放
 * end 结束位置摆放
 * center 中心点开始对齐
 * spaceBetween 元素平分间距
 * spaceAround 左右两边的间距是其他元素之间的一半
 * spaceEvenly 所有元素平分间距
 * */
class _TabsState extends State<Tabs> {
  @override
  Widget build(BuildContext context) {
    return Row( 
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          child: Text('一一'),
          color: Colors.red,
        ),
        Container(
          child: Text('二二'),
          color: Colors.blue,
        ),
        Container(
          child: Text('三三'),
          color: Colors.yellow,
        )
      ],
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
