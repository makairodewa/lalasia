import 'package:flutter/material.dart';
import 'package:lalasia/constants/style.dart';
import 'package:lalasia/helpers/reponsiveness.dart';
import 'package:lalasia/routes/router.dart';
import 'package:lalasia/routes/routes.dart';
import 'package:lalasia/widget/top_navigation_bar.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: const TextTheme().apply(fontFamily: "EudoxusSans")),
      initialRoute: routeHome,
      navigatorKey: navKey,
      onGenerateRoute: RouteGenerator.generateRoute,
      builder: (context, child) => AppView(child: child!),
    );
  }
}

class AppView extends StatefulWidget {
  final Widget child;

  const AppView({Key? key, required this.child}) : super(key: key);

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        backgroundColor: screenSecond,
        appBar: topNavigationBar(context, scaffoldKey),
        endDrawer: const Drawer(
          backgroundColor: primary,
        ),
        body: ResponsiveWidget(
            largeScreen: widget.child, smallScreen: localNavigator()));
  }
}

Navigator localNavigator() => Navigator(
      key: navKey,
      onGenerateRoute: RouteGenerator.generateRoute,
      initialRoute: routeHome,
    );
