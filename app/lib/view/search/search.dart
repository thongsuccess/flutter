import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  String hot;
  Search({this.hot="水水水水水"});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('====${this.hot}'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: Text('返回'),
        ),
      ),
    );
  }
}