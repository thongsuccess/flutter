import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new HomeWidget();
}

// 自定义组件的基本结构如下：
class HomeWidget extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: const Color(0xffff6e50)),
      home: Scaffold(
          appBar: _appBar(),
          body: ListView(
            children: <Widget>[
              _swiper(),
              _productType(),
              _productBanner(),
              _productList()
            ],
          )),
    );
  }

  Widget _appBar() {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 12, 16, 12),
              height: 64,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  color: const Color(0xffffffff)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.search,
                    color: const Color(0xff919191),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '搜索邮票、纸钞、硬币',
                    style: TextStyle(
                      color: const Color(0xff999999),
                      fontSize: 15,
                    ),
                  )
                ],
              ),
            ),
          ),
          Image.asset(
            'images/home/icon_home_msg.png',
            width: 30,
            height: 30,
          )
        ],
      ),
    );
  }

  Widget _swiper() {
    // https://zhuanlan.zhihu.com/p/88790923
    List<String> imgs = [
      'images/test/1.jpg',
      'images/test/2.jpg',
      'images/test/3.jpg',
      'images/test/4.jpg'
    ];
    return Container(
      margin: EdgeInsets.fromLTRB(15, 6, 15, 0),
      height: 200,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return Image.asset(
            imgs[index],
            fit: BoxFit.cover,
          );
        },
        itemCount: imgs.length,
        loop: true,
//        autoplay: true,
        scrollDirection: Axis.horizontal,
        pagination: SwiperPagination(
            // 指示点
            alignment: Alignment.bottomCenter,
            // margin: EdgeInsets.all(10),
            //dots 小圆点 // rect 无 //fraction 数字4/5
            builder: SwiperPagination.dots),
        // autoplayDelay: 1000,
        autoplayDisableOnInteraction: true,
        // control: SwiperControl(), // 左右按钮
        // viewportFraction: 0.8,
        // scale: 0.9,
        onIndexChanged: (index) {
          debugPrint("index:$index");
        },
        onTap: (index) {
          debugPrint("点击了第:$index个");
        },
      ),
    );
  }

  Widget _productType() {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                Image.asset(
                  'images/home/icon_sale.png',
                  width: 40,
                  height: 40,
                ),
                Text('我的出售'),
              ],
            ),
            Column(
              children: <Widget>[
                Image.asset(
                  'images/home/icon_buy.png',
                  width: 40,
                  height: 40,
                ),
                Text('我的求购'),
              ],
            ),
            Column(
              children: <Widget>[
                Image.asset(
                  'images/home/icon_tally.png',
                  width: 40,
                  height: 40,
                ),
                Text('记流水'),
              ],
            ),
            Column(
              children: <Widget>[
                Image.asset(
                  'images/home/icon_history.png',
                  width: 40,
                  height: 40,
                ),
                Text('历史成交'),
              ],
            )
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                Image.asset(
                  'images/home/icon_name.png',
                  width: 40,
                  height: 40,
                ),
                Text('实名认证'),
              ],
            ),
            Column(
              children: <Widget>[
                Image.asset(
                  'images/home/icon_member.png',
                  width: 40,
                  height: 40,
                ),
                Text('一尘认证'),
              ],
            ),
            Column(
              children: <Widget>[
                Image.asset(
                  'images/home/icon_vip.png',
                  width: 40,
                  height: 40,
                ),
                Text('会员中心'),
              ],
            ),
            Column(
              children: <Widget>[
                Image.asset(
                  'images/home/icon_shop.png',
                  width: 40,
                  height: 40,
                ),
                Text('店小二'),
              ],
            )
          ],
        )
      ],
    );
  }

  Widget _productBanner() {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 12, 20, 23),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Image.asset('images/home/banner_kyq.png'),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Image.asset('images/home/banner_qg.png'),
          )
        ],
      ),
    );
  }

  Widget _productList() {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              GestureDetector(
                child: Text(
                  '我的出售',
                  style: TextStyle(
                      color: const Color(0xff333230),
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                onTap: () {
                  print('ewqe');
                },
              ),
              GestureDetector(
                child: Text(
                  '我的求购',
                  style:
                      TextStyle(color: const Color(0xff333230), fontSize: 20),
                ),
                onTap: () {},
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 32, 20, 0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    height: 26,
                    margin: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(34),
                      color: const Color(0xFFFF5055),
                    ),
                    child: Text(
                      '全部',
                      style: TextStyle(
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    height: 26,
                    margin: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(34),
                      color: const Color(0xFFFF5055),
                    ),
                    child: Text(
                      '邮票',
                      style: TextStyle(
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    height: 26,
                    margin: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(34),
                      color: const Color(0xFFFF5055),
                    ),
                    child: Text(
                      '纸钞',
                      style: TextStyle(
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 26,
                    margin: EdgeInsets.only(left: 10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(34),
                      color: const Color(0xFFF3F3F3),
                    ),
                    child: Text(
                      '硬币',
                      style: TextStyle(
                        color: const Color(0xff919191),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 26,
                    margin: EdgeInsets.only(left: 10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(34),
                      color: const Color(0xFFFF5055),
                    ),
                    child: Text(
                      '其他',
                      style: TextStyle(
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
