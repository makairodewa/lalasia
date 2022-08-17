import 'package:flutter/material.dart';
import 'package:lalasia/constants/style.dart';
import 'package:lalasia/helpers/reponsiveness.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: ResponsiveWidget.isSmallScreen(context) ? 30 : 100,
          horizontal: ResponsiveWidget.isSmallScreen(context) ? 24 : 100),
      child: Center(
        child: _buildColumn(context),
      ),
    );
  }

  Column _buildColumn(BuildContext context) {
    return Column(
      children: [
        Text(
          "Discover Furniture With \nHigh Quality Wood",
          maxLines: 2,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: tile,
              fontWeight: FontWeight.w700,
              fontSize: ResponsiveWidget.isSmallScreen(context) ? 26 : 64),
        ),
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          width: 796,
          child: Text(
            "Pellentesque etiam blandit in tincidunt at donec. Eget ipsum dignissim placerat nisi, adipiscing mauris non. Purus parturient viverra nunc, tortor sit laoreet. Quam tincidunt aliquam adipiscing tempor.",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: paragraf,
                fontWeight: FontWeight.w500,
                fontSize: ResponsiveWidget.isSmallScreen(context) ? 14 : 18),
          ),
        ),
      ],
    );
  }
}
