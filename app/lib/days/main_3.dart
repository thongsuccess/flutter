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
  int _count = 0;
  final username = TextEditingController();
  final passwrod = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _getButtons(),
          Text('计数器$_count'),
          Text('${widget.message}'),
          // 字体图标放大不会失真，占据的空间更小，可设置颜色
          // IconData
          // Icon(IconData(0xe91d,fontFamily: 'MaterialIcons')),
          // 1. 0xe91d 16进制的编码
          // 2. 设置对应的字体
          Text(
            '\ue91d',
            style: TextStyle(fontFamily: 'MaterialIcons'),
          ),
          Icon(
            Icons.pets,
            color: Colors.red,
          ),
          TextField(
            controller: username,
            decoration: InputDecoration(
                hintText: '请输入用户名',
                icon: Icon(Icons.search),
                border: InputBorder.none),
            onChanged: (value) {
              print(value);
            },
            onSubmitted: (value) {
              print(value);
            },
          ),
          TextField(
            controller: passwrod,
            decoration:
                InputDecoration(hintText: '请输入密码', icon: Icon(Icons.search)),
            onChanged: (value) {
              print(value);
            },
            onSubmitted: (value) {
              print(value);
            },
          ),
          Container(
            child: FlatButton(
              child: Text('登录'),
              onPressed: () {
                final name = username.text;
                final pwd = passwrod.text;
                print('账号$name 密码$pwd');
                username.text = '';
                passwrod.text = '';
              },
            ),
          )
        ],
      ),
    );
  }

  Widget _getButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text('+'),
          color: Colors.pink,
          onPressed: () {
            setState(() {
              _count += 1;
            });
          },
        ),
        RaisedButton(
          child: Text('-'),
          color: Colors.blue,
          onPressed: () {
            setState(() {
              _count -= 1;
            });
          },
        )
      ],
    );
  }
}

/**
 * 生命周期
 * 1. 状态发生改变就会调用build方法
 *  */
