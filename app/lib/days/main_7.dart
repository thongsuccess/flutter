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
  bool _inFavor = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset('images/share_list_test.jpg'),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
              color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    '进击的巨人',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  // GestureDetector(
                  //   child: Icon(Icons.favorite),
                  // )
                  IconButton(
                    icon: Icon(
                      Icons.favorite,
                      color: _inFavor ? Colors.white : Colors.blue,
                    ),
                    onPressed: () {
                      setState(() {
                        _inFavor = !_inFavor;
                      });
                    },
                  )
                ],
              )),
        )
      ],
    );
  }
}

/**
 * 生命周期
 * 1. 状态发生改变就会调用build方法
 *  */
