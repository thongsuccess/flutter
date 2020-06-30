import 'package:flutter/material.dart';
import '../../view/home/Home.dart';
import '../../view/info/Info.dart';
import '../../view/publish/Publish.dart';
import '../../view/list/Deal.dart';
import '../../view/group/Social.dart';

class Tabbars extends StatefulWidget {
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabbars> {
  int idx = 0;
  List tablist = [Home(), Deal(), Publish(), Social(), Info()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: this.tablist[this.idx],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this.idx,
        onTap: (int i) {
          setState(() {
            //改变状态
            this.idx = i;
          });
        },
        iconSize: 36.0,
        fixedColor: Colors.red,
        type: BottomNavigationBarType.fixed, //配置底部tabs可以有多个按钮
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页')),
          BottomNavigationBarItem(icon: Icon(Icons.score), title: Text('交易')),
          BottomNavigationBarItem(icon: Icon(Icons.message), title: Text('发布')),
          BottomNavigationBarItem(icon: Icon(Icons.cake), title: Text('社群')),
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('我的'))
        ],
      ),
    );
  }
}
