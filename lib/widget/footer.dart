import 'package:flutter/material.dart';
import 'package:lalasia/constants/style.dart';
import 'package:lalasia/helpers/reponsiveness.dart';
import 'package:lalasia/widget/custom_text.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 100,
        horizontal: ResponsiveWidget.isSmallScreen(context) ? 24 : 100,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ResponsiveWidget.isLargeScreen(context) ||
                  ResponsiveWidget.isCustomSize(context) ||
                  ResponsiveWidget.isMediumScreen(context)
              ? _buildRow()
              : _buildColumn(context),
          const SizedBox(
            height: 56,
          ),
          const Divider(),
          const SizedBox(
            height: 86,
          ),
          ResponsiveWidget.isSmallScreen(context)
              ? _buildColumnFooter(context)
              : _buildRowFooter(),
        ],
      ),
    );
  }

  Row _buildRowFooter() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: "Lalasia",
                fontSize: 20,
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: 36,
              ),
              CustomText(
                text:
                    "Lalasia is digital agency that help you make better \nexperience iaculis cras in.",
                fontWeight: FontWeight.w500,
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: "Product",
                fontSize: 20,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomText(
                text: "New Arrivals.",
                fontWeight: FontWeight.w500,
              ),
              const SizedBox(
                height: 12,
              ),
              CustomText(
                text: "Best Selling.",
                fontWeight: FontWeight.w500,
              ),
              const SizedBox(
                height: 12,
              ),
              CustomText(
                text: "Home Decor.",
                fontWeight: FontWeight.w500,
              ),
              const SizedBox(
                height: 12,
              ),
              CustomText(
                text: "Kitchen Set",
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: "Sevices",
                fontSize: 20,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomText(
                text: "Catalog",
                fontWeight: FontWeight.w500,
              ),
              const SizedBox(
                height: 12,
              ),
              CustomText(
                text: "Blog",
                fontWeight: FontWeight.w500,
              ),
              const SizedBox(
                height: 12,
              ),
              CustomText(
                text: "FaQ",
                fontWeight: FontWeight.w500,
              ),
              const SizedBox(
                height: 12,
              ),
              CustomText(
                text: "Pricing",
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              text: "Follow Us",
              fontSize: 20,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomText(
              text: "Istagram",
              fontWeight: FontWeight.w500,
            ),
            const SizedBox(
              height: 12,
            ),
            CustomText(
              text: "Facebook",
              fontWeight: FontWeight.w500,
            ),
            const SizedBox(
              height: 12,
            ),
            CustomText(
              text: "Twitter",
              fontWeight: FontWeight.w500,
            ),
          ],
        ),
      ],
    );
  }

  Column _buildColumnFooter(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: "Lalasia",
              fontSize: 20,
              textAlign: TextAlign.left,
            ),
            const SizedBox(
              height: 36,
            ),
            CustomText(
              text:
                  "Lalasia is digital agency that help you make better \nexperience iaculis cras in.",
              fontWeight: FontWeight.w500,
              textAlign: TextAlign.left,
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: "Product",
                  fontSize: 20,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomText(
                  text: "New Arrivals.",
                  fontWeight: FontWeight.w500,
                ),
                const SizedBox(
                  height: 12,
                ),
                CustomText(
                  text: "Best Selling.",
                  fontWeight: FontWeight.w500,
                ),
                const SizedBox(
                  height: 12,
                ),
                CustomText(
                  text: "Home Decor.",
                  fontWeight: FontWeight.w500,
                ),
                const SizedBox(
                  height: 12,
                ),
                CustomText(
                  text: "Kitchen Set",
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: "Sevices",
                  fontSize: 20,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomText(
                  text: "Catalog",
                  fontWeight: FontWeight.w500,
                ),
                const SizedBox(
                  height: 12,
                ),
                CustomText(
                  text: "Blog",
                  fontWeight: FontWeight.w500,
                ),
                const SizedBox(
                  height: 12,
                ),
                CustomText(
                  text: "FaQ",
                  fontWeight: FontWeight.w500,
                ),
                const SizedBox(
                  height: 12,
                ),
                CustomText(
                  text: "Pricing",
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: "Follow Us",
                  fontSize: 20,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomText(
                  text: "Istagram",
                  fontWeight: FontWeight.w500,
                ),
                const SizedBox(
                  height: 12,
                ),
                CustomText(
                  text: "Facebook",
                  fontWeight: FontWeight.w500,
                ),
                const SizedBox(
                  height: 12,
                ),
                CustomText(
                  text: "Twitter",
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
          ],
        )
      ],
    );
  }

  Row _buildRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: "Join with me to get special discount",
          fontSize: 44,
        ),
        Container(
          color: primary,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            children: [
              CustomText(
                text: "Learn More",
                color: screen,
              ),
              const Icon(
                Icons.arrow_forward,
                color: screen,
                size: 20,
              ),
            ],
          ),
        )
      ],
    );
  }

  Column _buildColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: "Join with me to get special discount",
          fontSize: ResponsiveWidget.isSmallScreen(context)
              ? 24
              : MediaQuery.of(context).size.width - 44,
          textAlign: TextAlign.left,
        ),
        const SizedBox(
          height: 16,
        ),
        Container(
          width:
              ResponsiveWidget.isSmallScreen(context) ? 180 : double.infinity,
          color: primary,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: "Learn More",
                color: screen,
              ),
              const Icon(
                Icons.arrow_forward,
                color: screen,
                size: 20,
              ),
            ],
          ),
        )
      ],
    );
  }
}
