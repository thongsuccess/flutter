import 'package:flutter/material.dart';

class Publish extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new PublishWidget();
}

class PublishWidget extends State<Publish> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
              title: Text('发布'),
              centerTitle: true,
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(text: '热门'),
                  Tab(text: '福利'),
                  Tab(text: '福利'),
                ],
              )),
          body: Centers()),
    );
  }
}

class Centers extends StatelessWidget {
  const Centers({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('vaew'),
    );
  }
}
