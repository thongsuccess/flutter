import 'package:flutter/material.dart';
// import './view/tabs/Tabbar.dart';
// import 'routes/index.dart';

void main() => runApp(MyApp());

// void main() {
//   runApp(MyApp());
// }

// Scaffold 脚手架

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HY(),
    );
  }
}

class HY extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第一个程序'),
      ),
      body: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var flag = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Checkbox(
              value: flag,
              onChanged: (value) {
                setState(() {
                  flag = value;
                });
              }),
          Text(
            '同意用户协议',
            style: TextStyle(color: Colors.red, fontSize: 20.0),
          )
        ],
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Tabbars(),
//       onGenerateRoute: onGetRouters,
//     );
//   }
// }
