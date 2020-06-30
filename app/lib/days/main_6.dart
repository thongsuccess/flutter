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
 * Expanded 收缩元素
 * */
class _TabsState extends State<Tabs> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(
          child: Container(
            child: Text('一一'),
            color: Colors.red,
          ),
        ),
        Expanded(
          child: Container(
            child: Text('一一'),
            color: Colors.blue,
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            child: Text('一一'),
            color: Colors.red,
          ),
        ),
        Expanded(
          child: Container(
            child: Text('ssss一'),
            color: Colors.yellow,
          ),
        ),
        Expanded(
          child: Container(
            child: Text('一一'),
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}

/**
 * 生命周期
 * 1. 状态发生改变就会调用build方法
 *  */
