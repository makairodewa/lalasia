import 'package:flutter/material.dart';
import 'package:lalasia/constants/style.dart';
import 'package:lalasia/helpers/reponsiveness.dart';
import 'package:lalasia/widget/custom_text.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({
    Key? key,
    required this.images,
  }) : super(key: key);
  final String images;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: ResponsiveWidget.isSmallScreen(context) ? 220 : 394,
            height: ResponsiveWidget.isSmallScreen(context) ? 194 : 360,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(images),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          CustomText(
            text: "Chair",
            color: paragraf,
          ),
          const SizedBox(
            height: 14,
          ),
          CustomText(
            text: "White Aesthetic Chair",
            fontSize: ResponsiveWidget.isSmallScreen(context) ? 16 : 26,
          ),
          const SizedBox(
            height: 6,
          ),
          CustomText(
            text: "Combination of wood and wool",
            fontSize: ResponsiveWidget.isSmallScreen(context) ? 14 : 18,
            fontWeight: FontWeight.w500,
            color: paragraf,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomText(
            text: "\$63.47",
            fontSize: ResponsiveWidget.isSmallScreen(context) ? 16 : 24,
            fontWeight: FontWeight.w700,
            color: paragraf,
          ),
        ],
      ),
    );
  }
}
