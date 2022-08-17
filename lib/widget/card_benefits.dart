import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lalasia/constants/style.dart';

class BenefitCardWidget extends StatelessWidget {
  const BenefitCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: screenSecond,
              child: SvgPicture.asset('assets/svg/start.svg',
                  semanticsLabel: "vector", height: 20, fit: BoxFit.cover),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Many Choices",
              style: TextStyle(
                color: tile,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Pellentesque etiam blandit in tincidunt at donec. Eget ipsum dignissim placerat nisi, adipiscing mauris non. ",
              style: TextStyle(
                color: paragraf,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
