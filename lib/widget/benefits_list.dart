import 'package:flutter/material.dart';
import 'package:lalasia/helpers/reponsiveness.dart';
import 'package:lalasia/widget/card_benefits.dart';

class BenefitsCardWidget extends StatelessWidget {
  const BenefitsCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)
        ? _buildColumn()
        : _buildRow();
  }

  Row _buildRow() {
    return Row(
      children: const [
        Flexible(child: BenefitCardWidget()),
        Flexible(child: BenefitCardWidget()),
        Flexible(child: BenefitCardWidget()),
      ],
    );
  }

  Column _buildColumn() {
    return Column(
      children: const [
        BenefitCardWidget(),
        BenefitCardWidget(),
        BenefitCardWidget(),
      ],
    );
  }
}
