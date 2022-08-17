import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lalasia/constants/style.dart';
import 'package:lalasia/helpers/reponsiveness.dart';
import 'package:lalasia/widget/navbar/nav_bar.dart';

PreferredSize topNavigationBar(
    BuildContext context, GlobalKey<ScaffoldState> key) {
  return PreferredSize(
    preferredSize: Size(
        double.infinity, !ResponsiveWidget.isSmallScreen(context) ? 120 : 72),
    child: AppBar(
      title: Visibility(
        visible: ResponsiveWidget.isSmallScreen(context),
        child: const Text(
          "Lalasia",
          style:
              TextStyle(color: tile, fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
      elevation: 0.9,
      leading: Visibility(
        visible: ResponsiveWidget.isSmallScreen(context),
        child: const Icon(
          Icons.ac_unit_outlined,
          color: primary,
          size: 30,
        ),
      ),
      actions: [
        Visibility(
          visible: ResponsiveWidget.isSmallScreen(context),
          child: Padding(
            padding: const EdgeInsets.only(right: 24),
            child: IconButton(
                color: primary,
                icon: const Icon(
                  Icons.menu,
                  size: 30,
                ),
                onPressed: () {
                  if (key.currentState!.isDrawerOpen) {
                    key.currentState!.openEndDrawer();
                  } else {
                    key.currentState!.openEndDrawer();
                  }
                }),
          ),
        )
      ],
      backgroundColor: screenSecond,
      flexibleSpace: Visibility(
        visible: !ResponsiveWidget.isSmallScreen(context) ||
            ResponsiveWidget.isCustomSize(context) ||
            ResponsiveWidget.isMediumScreen(context),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 100),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.ac_unit_outlined,
                color: primary,
                size: 30,
              ),
              SizedBox(
                width: ResponsiveWidget.isMediumScreen(context) ? 30 : 50,
              ),
              const Text(
                "Lalasia",
                style: TextStyle(
                    color: tile, fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Expanded(child: Container()),
              // const Text(
              //   "Product",
              //   style: TextStyle(
              //       color: tile, fontWeight: FontWeight.w500, fontSize: 18),
              // ),
              // SizedBox(
              //   width: ResponsiveWidget.isLargeScreen(context) ? 60 : 30,
              // ),
              // const Text(
              //   "Services",
              //   style: TextStyle(
              //       color: tile, fontWeight: FontWeight.w500, fontSize: 18),
              // ),
              // SizedBox(
              //   width: ResponsiveWidget.isLargeScreen(context) ? 60 : 30,
              // ),
              // const Text(
              //   "Article",
              //   style: TextStyle(
              //       color: tile, fontWeight: FontWeight.w500, fontSize: 18),
              // ),
              // SizedBox(
              //   width: ResponsiveWidget.isLargeScreen(context) ? 60 : 30,
              // ),
              // const Text(
              //   "About Us",
              //   style: TextStyle(
              //       color: tile, fontWeight: FontWeight.w500, fontSize: 18),
              // ),
              const MyNavbBar(),
              Expanded(child: Container()),
              SvgPicture.asset('assets/svg/bag-2.svg', height: 20),
              SizedBox(
                width: ResponsiveWidget.isMediumScreen(context) ? 30 : 50,
              ),
              SvgPicture.asset('assets/svg/user.svg', height: 20),
            ],
          ),
        ),
      ),
    ),
  );
}
