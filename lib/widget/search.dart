import 'package:flutter/material.dart';
import 'package:lalasia/constants/style.dart';
import 'package:lalasia/helpers/reponsiveness.dart';
import 'package:lalasia/widget/custom_text.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: ResponsiveWidget.isSmallScreen(context) ? 30 : 90,
          left: 24,
          right: 24),
      child: ResponsiveWidget.isSmallScreen(context)
          ? _buildColumn(context)
          : _buildStack(context),
    );
  }

  Stack _buildStack(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      clipBehavior: Clip.none,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 100,
          ),
          child: SizedBox(
            height: ResponsiveWidget.isSmallScreen(context) ? 160 : 480,
            width: double.infinity,
            child: Image.asset(
              'assets/img/Rectangle 2.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: ResponsiveWidget.isSmallScreen(context) ? -100 : -40,
          child: _buildSearchButton(context),
        ),
      ],
    );
  }

  Column _buildColumn(BuildContext context) {
    return Column(
      children: [
        _buildSearchButton(context),
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          height: 160,
          width: double.infinity,
          child: Image.asset(
            'assets/img/Rectangle 2.png',
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }

  Container _buildSearchButton(BuildContext context) {
    return Container(
      width: ResponsiveWidget.isSmallScreen(context)
          ? MediaQuery.of(context).size.width
          : MediaQuery.of(context).size.width / 2,
      color: screen,
      padding: EdgeInsets.symmetric(
          vertical: ResponsiveWidget.isSmallScreen(context) ? 8 : 15),
      child: Row(
        children: [
          const Flexible(
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search,
                    size: 30,
                  ),
                  disabledBorder: InputBorder.none,
                  hintStyle: TextStyle(
                      color: paragraf,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                  hintText: "Search Property"),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 15),
            width: 170,
            decoration: const BoxDecoration(color: primary),
            child: Center(
              child: CustomText(
                text: "Search",
                color: screen,
              ),
            ),
          )
        ],
      ),
    );
  }
}
