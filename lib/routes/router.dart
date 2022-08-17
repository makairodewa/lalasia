import 'package:flutter/material.dart';
import 'package:lalasia/pages/home/home_view.dart';
import 'package:lalasia/pages/about_page.dart';
import 'package:lalasia/pages/products/product_page.dart';
import 'package:lalasia/routes/routes.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case routeHome:
        return _getPageRoute(const HomeView());
      case routeProduct:
        return _getPageRoute(const ProductPage());
      case routeServices:
        return _getPageRoute(const Se());
      case routeArticle:
        return _getPageRoute(const As());
      case routeAbout:
        return _getPageRoute(const AboutPage());
      default:
        return _getPageRoute(const HomeView());
    }
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}

class As extends StatelessWidget {
  const As({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Arti"),
    );
  }
}

class Se extends StatelessWidget {
  const Se({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Swe"),
    );
  }
}
