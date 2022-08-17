import 'package:flutter/cupertino.dart';
import 'package:lalasia/constants/style.dart';
import 'package:lalasia/helpers/reponsiveness.dart';
import 'package:lalasia/widget/custom_text.dart';

class ProductHeaderWidget extends StatelessWidget {
  const ProductHeaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100, left: 24, right: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomText(
            text: "Product",
            color: secondary,
            fontSize: ResponsiveWidget.isSmallScreen(context) ? 14 : 18,
          ),
          const SizedBox(
            height: 10,
          ),
          CustomText(
            text: "Our popular product",
            fontSize: ResponsiveWidget.isSmallScreen(context) ? 24 : 37,
          ),
          const SizedBox(
            height: 18,
          ),
          SizedBox(
            width: 656,
            child: CustomText(
              text:
                  "Pellentesque etiam blandit in tincidunt at donec. Eget ipsum dignissim placerat nisi, adipiscing mauris non purus parturient.",
              color: paragraf,
              fontWeight: FontWeight.w500,
              textAlign: TextAlign.left,
              fontSize: ResponsiveWidget.isSmallScreen(context) ? 14 : 18,
            ),
          ),
        ],
      ),
    );
  }
}
