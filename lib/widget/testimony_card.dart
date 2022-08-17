import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lalasia/constants/style.dart';
import 'package:lalasia/helpers/reponsiveness.dart';
import 'package:lalasia/widget/custom_text.dart';

class TestimonialCardWidget extends StatelessWidget {
  final String images;

  const TestimonialCardWidget({
    Key? key,
    required this.images,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        width: ResponsiveWidget.isSmallScreen(context) ? 327 : 545,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset('assets/svg/start.svg',
                    semanticsLabel: "vector", height: 20, fit: BoxFit.cover),
                SvgPicture.asset('assets/svg/start.svg',
                    semanticsLabel: "vector", height: 20, fit: BoxFit.cover),
              ],
            ),
            const SizedBox(
              height: 26,
            ),
            CustomText(
              text:
                  "Pellentesque etiam blandit in tincidunt at donec. Eget ipsum dignissim placerat nisi, adipiscing mauris non. ",
              color: paragraf,
              textAlign: TextAlign.left,
              maxLine: 3,
            ),
            const SizedBox(
              height: 26,
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(images),
                ),
                const SizedBox(
                  width: 14,
                ),
                CustomText(
                  text: "Janne Cooper",
                  fontSize: 20,
                ),
                Expanded(child: Container()),
                SvgPicture.asset('assets/svg/start.svg',
                    semanticsLabel: "vector", height: 20, fit: BoxFit.cover),
                CustomText(
                  text: "3.4",
                  fontSize: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
