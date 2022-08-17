import 'package:flutter/material.dart';
import 'package:lalasia/helpers/reponsiveness.dart';
import 'package:lalasia/widget/product.dart';

class ProductListWidget extends StatelessWidget {
  const ProductListWidget({
    Key? key,
    required this.images,
  }) : super(key: key);

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: ResponsiveWidget.isSmallScreen(context) ? 30 : 50),
      child: SizedBox(
        height: ResponsiveWidget.isSmallScreen(context) ? 400 : 544,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const ScrollPhysics(),
          itemCount: images.length,
          itemBuilder: (context, index) {
            return ProductWidget(images: images[index]);
          },
        ),
      ),
    );
  }
}
