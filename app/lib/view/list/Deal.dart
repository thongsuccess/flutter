import 'package:flutter/material.dart';

class Deal extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new DealWidget();
}

class DealWidget extends State<Deal> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('交易'),
          ),
          body: Apis()),
      theme: ThemeData(primaryColor: Colors.red),
    );
  }
}

class Apis extends StatelessWidget {
  // List<Widget> _getList() {
  // var templist = listData.map((val) {
  //   return Container(
  //     child: Column(
  //       children: <Widget>[
  //         Image.network(val['url']),
  //         SizedBox(height: 20,),
  //         Text(val['text'],
  //           style: TextStyle(
  //             fontSize: 30.0
  //           ),
  //         )
  //     ]),
  //   );
  // });
  // return templist.toList();
  // }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        padding: EdgeInsets.all(20.0),
        // children: this._getList(),
        // height: 300,
        // child: ListView(
        // scrollDirection: Axis.horizontal,
        // children: <Widget>[
        //   Container(
        //     child: ListView(
        //       children: <Widget>[
        //         Image.network('https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3751943383,698662227&fm=26&gp=0.jpg'),
        //       ],
        //     ),
        //   ),
        //   Container(
        //     child: Image.network('https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3344832883,2462232837&fm=26&gp=0.jpg'),
        //   ),
        //   Container(
        //     child: Image.network('https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3751943383,698662227&fm=26&gp=0.jpg'),
        //   ),
        //   Container(
        //     child: Image.network('https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3751943383,698662227&fm=26&gp=0.jpg'),
        //   ),
        //   Container(
        //     child: Image.network('https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3344832883,2462232837&fm=26&gp=0.jpg'),
        //   ),
        // ],
        // ),
        // children: <Widget>[
        // padding: EdgeInsets.all(20.0),
        // Image.network('https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3751943383,698662227&fm=26&gp=0.jpg'),
        // Image.network('https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3751943383,698662227&fm=26&gp=0.jpg'),
        // Image.network('https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3751943383,698662227&fm=26&gp=0.jpg'),
        // Image.network('https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3751943383,698662227&fm=26&gp=0.jpg'),
        // Image.network('https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3751943383,698662227&fm=26&gp=0.jpg'),
        // Image.network('https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3751943383,698662227&fm=26&gp=0.jpg'),
        // Image.network('https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3751943383,698662227&fm=26&gp=0.jpg'),
        // Image.network('https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3751943383,698662227&fm=26&gp=0.jpg'),
        // Image.network('https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3344832883,2462232837&fm=26&gp=0.jpg'),
        // Image.network('https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3344832883,2462232837&fm=26&gp=0.jpg'),
        // Image.network('https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3344832883,2462232837&fm=26&gp=0.jpg'),
        // Image.network('https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3344832883,2462232837&fm=26&gp=0.jpg'),
        // Image.network('https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3344832883,2462232837&fm=26&gp=0.jpg'),
        // Image.network('https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3344832883,2462232837&fm=26&gp=0.jpg'),
        // Image.network('https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3344832883,2462232837&fm=26&gp=0.jpg'),
        // Image.network('https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3344832883,2462232837&fm=26&gp=0.jpg'),

        // ListTile(
        //   // leading: Icon(
        //   //   Icons.child_care,
        //   //   color: Colors.red,
        //   //   size: 40.0,
        //   // ),
        //   leading: Image.network('https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3751943383,698662227&fm=26&gp=0.jpg'),
        //   title: Text('一级'),
        //   subtitle: Text('二级'),
        //   // trailing: Icon(Icons.clear_all),
        //   trailing: Image.network('https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3344832883,2462232837&fm=26&gp=0.jpg'),
        // ),
        // ListTile(
        //   leading: Image.network('https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3344832883,2462232837&fm=26&gp=0.jpg'),
        //   title: Text('一级'),
        //   subtitle: Text('二级'),
        // ),
        // ListTile(
        //   title: Text('一级'),
        //   subtitle: Text('二级'),
        // )
        // ],
        );
    // return Center(
    // child: Container(
    // child: Image.network('https://dss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=3252521864,872614242&fm=26&gp=0.jpg',),
    // child: Text(
    //   '文本',
    //   style: TextStyle(
    //     fontSize: 20.0,
    //     fontWeight: FontWeight.w800,
    //     color: Colors.white
    //   ),
    // ),
    // child: ClipOval(
    // child: Image.network('https://dss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=3252521864,872614242&fm=26&gp=0.jpg',
    //   width: 100,
    //   height: 100,
    //   fit: BoxFit.cover,
    // ),
    // ),
    // 本地图片引入
    // child: Image.asset('images/2.jpg',
    //   fit: BoxFit.cover,
    // ),

    // width: 300.0,
    // height: 300.0,
    // decoration: BoxDecoration(
    // color: Colors.blue,
    // borderRadius: BorderRadius.all(
    //   Radius.circular(150)
    // )
    // borderRadius: BorderRadius.circular(150),
    // image: DecorationImage(
    //   image: NetworkImage('https://dss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=3252521864,872614242&fm=26&gp=0.jpg'),
    //   fit: BoxFit.cover
    // )
    // ),
    // decoration: BoxDecoration(
    //   color: Colors.red,
    //   border: Border.all(
    //     color: Colors.blue,
    //     width: 5.0
    //   )
    // ),
    // padding: EdgeInsets.all(10.0),
    // padding: EdgeInsets.fromLTRB(30, 10, 15, 20),
    // alignment: Alignment.bottomLeft,
    // transform: Matrix4.translationValues(20,0,0),
    // transform: Matrix4.rotationZ(0.3),
    // )
    // );
  }
}
