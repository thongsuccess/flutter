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
    return ListView(
      children: <Widget>[
        HomePageProductItem('一级标题', '二级标题', '图片'),
        HomePageProductItem('一级标题', '二级标题', '图片'),
        HomePageProductItem('一级标题', '二级标题', '图片'),
        HomePageProductItem('一级标题', '二级标题', '图片'),
        HomePageProductItem('一级标题', '二级标题', '图片'),
        HomePageProductItem('一级标题', '二级标题', '图片'),
        HomePageProductItem('一级标题', '二级标题', '图片'),
      ],
    );
  }
}

class HomePageProductItem extends StatelessWidget {
  final String title;
  final String desc;
  final String imageURL;

  HomePageProductItem(this.title, this.desc, this.imageURL);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(border: Border.all(width: 5, color: Colors.pink)),
      padding: EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,  // start end ....
        children: <Widget>[
          // Row(),
          Text(title),
          SizedBox(
            height: 20,
          ),
          Text(desc),
          Text(imageURL)
        ],
      ),
    );
  }
}
