import 'package:flutter/material.dart';
import 'package:lalasia/helpers/reponsiveness.dart';
import 'package:lalasia/routes/routes.dart';
import 'package:lalasia/widget/navbar/interactiv.dart';

class NavigationItem extends StatelessWidget {
  final String title;
  final String routeName;
  final bool selected;
  final Function onHighlight;

  const NavigationItem({
    Key? key,
    required this.title,
    required this.routeName,
    required this.selected,
    required this.onHighlight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        navKey.currentState!.pushNamed(routeName);
        onHighlight(routeName);
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: ResponsiveWidget.isCustomSize(context)
                ? 10
                : ResponsiveWidget.isMediumScreen(context)
                    ? 40
                    : 50.0),
        child: InteractiveNavItem(
          text: title,
          routeName: routeName,
          selected: selected,
        ),
      ),
    );
  }
}
