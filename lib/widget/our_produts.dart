import 'package:flutter/material.dart';
import 'package:lalasia/constants/style.dart';
import 'package:lalasia/helpers/reponsiveness.dart';
import 'package:lalasia/widget/custom_text.dart';

class OurProductsWidget extends StatelessWidget {
  const OurProductsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: ResponsiveWidget.isSmallScreen(context) ? 24 : 100,
          vertical: ResponsiveWidget.isSmallScreen(context) ? 0 : 180),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: CustomText(
              text: "Our Product",
              color: secondary,
              fontSize: ResponsiveWidget.isSmallScreen(context) ? 14 : 18,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          if (!ResponsiveWidget.isSmallScreen(context))
            SizedBox(
              height: 666,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(child: _buildColumn(context)),
                  const SizedBox(
                    width: 20,
                  ),
                  Flexible(child: _buildColumn1(context))
                ],
              ),
            )
          else
            SizedBox(
              child: Column(
                children: [
                  _buildColumn(context),
                  _buildColumn1(context),
                ],
              ),
            ),
        ],
      ),
    );
  }

  Column _buildColumn1(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            !ResponsiveWidget.isSmallScreen(context)
                ? _buildTotalExp(context)
                : Flexible(child: _buildTotalExp(context)),
            const SizedBox(
              width: 57,
            ),
            !ResponsiveWidget.isSmallScreen(context)
                ? _buildTotalExp(context)
                : Flexible(child: _buildTotalExp(context)),
            const SizedBox(
              width: 57,
            ),
            !ResponsiveWidget.isSmallScreen(context)
                ? _buildTotalExp(context)
                : Flexible(child: _buildTotalExp(context)),
          ],
        ),
        ResponsiveWidget.isSmallScreen(context)
            ? const SizedBox(
                height: 50,
              )
            : const SizedBox(),
        !ResponsiveWidget.isSmallScreen(context)
            ? Flexible(child: _buildImgRight(context))
            : Column(
                children: [
                  _buildImgRight(context),
                  const SizedBox(
                    height: 20,
                  ),
                  _buildImgLeft(context)
                ],
              )
      ],
    );
  }

  Column _buildTotalExp(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: "483 +",
          fontSize: !ResponsiveWidget.isSmallScreen(context) ? 44 : 22,
        ),
        const SizedBox(
          height: 10,
        ),
        CustomText(
          text: "Happy Client",
          fontWeight: FontWeight.w500,
          color: paragraf,
          fontSize: !ResponsiveWidget.isSmallScreen(context) ? 18 : 14,
        ),
      ],
    );
  }

  SizedBox _buildImgRight(BuildContext context) {
    return SizedBox(
      width: 595,
      height: ResponsiveWidget.isSmallScreen(context) ? 200 : 510,
      child: Image.network(
        'https://images.unsplash.com/photo-1585694854987-19b609e7721b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
        fit: BoxFit.cover,
      ),
    );
  }

  Column _buildColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(
          text: "Crafted by talented and \nhigh quality material",
          fontSize: ResponsiveWidget.isSmallScreen(context) ? 24 : 37,
          textAlign: TextAlign.left,
          maxLine: 4,
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: 656,
          child: CustomText(
            text:
                "Pellentesque etiam blandit in tincidunt at donec. Eget ipsum dignissim placerat nisi, adipiscing mauris non purus parturient. morbi fermentum, vivamus et accumsan dui tincidunt pulvinar.",
            textAlign: TextAlign.justify,
            color: paragraf,
            maxLine: 4,
            fontWeight: FontWeight.w500,
            fontSize: ResponsiveWidget.isSmallScreen(context) ? 14 : 18,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          color: primary,
          child: Center(
            child: CustomText(
              text: "Learn More",
              color: screen,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Visibility(
            visible: !ResponsiveWidget.isSmallScreen(context),
            child: _buildImgLeft(context))
      ],
    );
  }

  SizedBox _buildImgLeft(BuildContext context) {
    return SizedBox(
      width: 595,
      height: ResponsiveWidget.isSmallScreen(context)
          ? MediaQuery.of(context).size.height / 2
          : MediaQuery.of(context).size.height / 2.6,
      child: Image.network(
        'https://images.unsplash.com/photo-1555041469-a586c61ea9bc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
        fit: BoxFit.cover,
      ),
    );
  }
}
