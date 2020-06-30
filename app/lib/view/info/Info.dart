import 'package:flutter/material.dart';

class Info extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new InfoWidget();
}

class InfoWidget extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('我的'),
        ),  
        body: Center(  // center 整体居中显示
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(150),
              image: DecorationImage(
                image: NetworkImage('images/share_list_test.jpg'),
                fit: BoxFit.cover
              )
            ),
            // padding: const EdgeInsets.all(15.0), //内边距
            // margin: const EdgeInsets.all(20),  // 外边距
          ),
        ),
      ),
    );
  }
}