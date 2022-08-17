import 'package:flutter/material.dart';
import 'package:lalasia/constants/style.dart';
import 'package:lalasia/helpers/reponsiveness.dart';
import 'package:lalasia/widget/benefits_list.dart';
import 'package:lalasia/widget/custom_text.dart';

class BenfefitsWidget extends StatelessWidget {
  const BenfefitsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: ResponsiveWidget.isSmallScreen(context) ? 24 : 100,
          vertical: ResponsiveWidget.isSmallScreen(context) ? 30 : 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ResponsiveWidget.isSmallScreen(context)
              ? _buildColumn(context)
              : _buildRow(context),
          const SizedBox(
            height: 20,
          ),
          const BenefitsCardWidget(),
        ],
      ),
    );
  }

  Row _buildRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: "Benefits",
                color: secondary,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomText(
                text: "Benefits when using our services",
                fontSize: 37,
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
        Expanded(flex: 2, child: Container()),
        Expanded(
          flex: 2,
          child: _buildTestSubtittle(context),
        ),
      ],
    );
  }
}

Column _buildColumn(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      CustomText(
        text: "Benefits",
        color: secondary,
      ),
      const SizedBox(
        height: 16,
      ),
      CustomText(
        text: "Benefits when using \nour services",
        fontSize: 24,
        textAlign: TextAlign.left,
      ),
      const SizedBox(
        height: 16,
      ),
      _buildTestSubtittle(context),
    ],
  );
}

Text _buildTestSubtittle(BuildContext context) {
  return Text(
    "Pellentesque etiam blandit in tincidunt at donec. Eget ipsum dignissim placerat nisi, adipiscing mauris non purus parturient.",
    style: TextStyle(
        color: paragraf,
        fontWeight: FontWeight.w500,
        fontSize: ResponsiveWidget.isSmallScreen(context) ? 14 : 18),
    textAlign: TextAlign.left,
    maxLines: 3,
    overflow: TextOverflow.ellipsis,
  );
}
