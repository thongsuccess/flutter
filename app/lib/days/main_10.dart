import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          highlightColor: Colors.transparent,
          primaryColor: Colors.red,
          splashColor: Colors.transparent),
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
        body: Center(child: StartRating()));
  }
}

class StartRating extends StatefulWidget {
  final double rating;
  final double maxRating;
  final int count;
  final double size;
  final Color unselectedColor;
  final Color selectedColor;

  StartRating(
      {this.rating,
      this.maxRating,
      this.count = 5,
      this.size = 30,
      this.unselectedColor = const Color(0xffbbbbbb),
      this.selectedColor = const Color(0xffCCCCCC)});

  @override
  _StartRatingState createState() => _StartRatingState();
}

class _StartRatingState extends State<StartRating> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: buildUnselectedStar(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: buildselectedStar(),
        ),
      ],
    );
  }

  List<Widget> buildUnselectedStar() {
    return List.generate(widget.count, (index) {
      return Icon(
        Icons.star_border,
        color: widget.unselectedColor,
        size: widget.size,
      );
    });
  }

  List<Widget> buildselectedStar() {
    return List.generate(3, (index) {
      return Icon(
        Icons.star,
        color: widget.selectedColor,
        size: widget.size,
      );
    });
  }
}
