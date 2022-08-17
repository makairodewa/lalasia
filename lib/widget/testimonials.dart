import 'package:flutter/material.dart';
import 'package:lalasia/constants/style.dart';
import 'package:lalasia/widget/custom_text.dart';
import 'package:lalasia/widget/testimony_card.dart';

class TestimonialsWidget extends StatelessWidget {
  const TestimonialsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 180),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomText(
            text: "Testimonials",
            color: secondary,
          ),
          const SizedBox(
            height: 10,
          ),
          CustomText(
            text: "What our customer say",
            fontSize: 37,
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 656,
            child: CustomText(
              text:
                  "Pellentesque etiam blandit in tincidunt at donec. Eget ipsum dignissim placerat nisi, adipiscing mauris non purus parturient.",
              color: paragraf,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            height: 250,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const ScrollPhysics(),
              itemCount: images.length,
              itemBuilder: (context, index) {
                return TestimonialCardWidget(images: images[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
