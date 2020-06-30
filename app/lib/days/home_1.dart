import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new HomeWidget();
}

// 自定义组件的基本结构如下：
class HomeWidget extends State<Home> {
  final keyWorks = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: const Color(0xffff6e50)),
      home: Scaffold(
          appBar: _appBar(),
          body: Container(
            child: Text('aaaadddd'),
          )),
    );
  }

  Widget _appBar() {
    return AppBar(
        elevation: 0, // 导航阴影
        title: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
                child: Container(
                    width: 634,
                    margin: EdgeInsets.fromLTRB(0, 12, 16, 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      color: const Color(0xffffffff),
                    ),
                    child: Center(
                      child: TextField(
                        textAlign: TextAlign.center,
                        controller: keyWorks,
                        decoration: InputDecoration(
                            hintText: '搜索邮票、纸钞、硬币',
                            icon: Icon(
                              Icons.search,
                              color: const Color(0xffCCCCCC),
                              size: 28,
                            ),
                            border: InputBorder.none),
                        style: TextStyle(
                          color: const Color(0xff919191),
                        ),
                        onChanged: (value) {
                          print(value);
                        },
                      ),
                    ))),
            Image.asset(
              'icon_home_msg.png',
              width: 30,
              height: 30,
            ),
          ],
        ),
        centerTitle: true);
  }
}
