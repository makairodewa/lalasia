import 'package:flutter/widgets.dart';
import 'package:lalasia/constants/style.dart';
import 'package:lalasia/widget/product_header.dart';
import 'package:lalasia/widget/product_list.dart';

class ProductsWidget extends StatelessWidget {
  const ProductsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ProductHeaderWidget(),
        ProductListWidget(images: images),
      ],
    );
  }
}
