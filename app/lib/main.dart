import 'package:flutter/material.dart';
import './view/tabs/Tabbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          highlightColor: Colors.transparent,
          primaryColor: Colors.red,
          splashColor: Colors.transparent),
      home: Tabbars(),
    );
  }
}
