import 'package:flutter/material.dart';

class Social extends StatefulWidget {
  Social({Key key}) : super(key: key);

  @override
  _SocialState createState() => _SocialState();
}

class _SocialState extends State<Social> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('交易'),
        ),
      ),
    );
  }
}
