import 'package:flutter/material.dart';
import '../view/tabs/Tabbar.dart';
import '../view/search/search.dart';

final router = {
  '/': () => Tabbars(),
  '/Search': (context, {arguments}) => Search(),
};

var onGetRouters = (RouteSettings settings) {
  final String name = settings.name;
  final Function pageContentBuilder = router[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
