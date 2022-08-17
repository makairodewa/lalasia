import 'package:flutter/material.dart';
import 'package:lalasia/routes/routes.dart';
import 'package:lalasia/widget/navbar/navigation_item.dart';

class MyNavbBar extends StatefulWidget {
  const MyNavbBar({Key? key}) : super(key: key);

  @override
  State<MyNavbBar> createState() => _MyNavbBarState();
}

class _MyNavbBarState extends State<MyNavbBar> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
          NavigationItem(
            selected: index == 1,
            title: 'Product',
            routeName: routeProduct,
            onHighlight: onHighlight,
          ),
          NavigationItem(
            selected: index == 2,
            title: 'Services',
            routeName: routeServices,
            onHighlight: onHighlight,
          ),
          NavigationItem(
            selected: index == 3,
            title: 'Article',
            routeName: routeArticle,
            onHighlight: onHighlight,
          ),
          NavigationItem(
            selected: index == 4,
            title: 'About Us',
            routeName: routeAbout,
            onHighlight: onHighlight,
          ),
        ],
      ),
    );
  }

  void onHighlight(String route) {
    switch (route) {
      case routeProduct:
        changeHighlight(1);
        break;
      case routeServices:
        changeHighlight(2);
        break;
      case routeArticle:
        changeHighlight(3);
        break;
      case routeAbout:
        changeHighlight(4);
        break;
    }
  }

  void changeHighlight(int newIndex) {
    setState(() {
      index = newIndex;
    });
  }
}
