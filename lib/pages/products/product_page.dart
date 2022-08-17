import 'package:flutter/material.dart';
import 'package:lalasia/constants/style.dart';
import 'package:lalasia/helpers/reponsiveness.dart';
import 'package:lalasia/widget/custom_text.dart';
import 'package:lalasia/widget/footer.dart';
import 'package:readmore/readmore.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: ResponsiveWidget.isSmallScreen(context) ? 24 : 100,
            vertical: ResponsiveWidget.isSmallScreen(context) ? 50 : 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (!ResponsiveWidget.isSmallScreen(context))
              Row(
                children: [
                  Flexible(
                    child: Container(
                      height: 600,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://images.unsplash.com/photo-1660557989690-d09a28f6356e?crop=entropy&cs=tinysrgb&fm=jpg&ixid=Mnw3MjAxN3wwfDF8YWxsfDY0fHx8fHx8Mnx8MTY2MDY0MDUwNQ&ixlib=rb-1.2.1&q=80&q=85&fmt=jpg&crop=entropy&cs=tinysrgb&w=450'),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: CustomText(
                            text: "White Aesthetic Chair",
                            fontSize: 44,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: CustomText(
                            text: "Combination of wood and wool",
                            color: paragraf,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: CustomText(
                            text: "Color",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Row(
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                color: tile,
                              ),
                              Container(
                                width: 50,
                                height: 50,
                                color: primary,
                              ),
                              Container(
                                width: 50,
                                height: 50,
                                color: secondary,
                              ),
                              Container(
                                width: 50,
                                height: 50,
                                color: screenthree,
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: ReadMoreText(
                            'Faucibus facilisi morbi pharetra quis sed. Vitae suspendisse facilisis facilisis ligula felis et a parturient aenean. Ac maecenas ultricies felis risus scelerisque duis posuere...',
                            trimLines: 2,
                            style: TextStyle(
                                color: paragraf,
                                fontWeight: FontWeight.w500,
                                fontSize: 18),
                            colorClickableText: primary,
                            trimMode: TrimMode.Line,
                            trimCollapsedText: '...Read more',
                            trimExpandedText: ' show less',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: CustomText(
                            text: "\$99.98",
                            fontSize: 24,
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Row(
                          children: [
                            Flexible(
                              child: Container(
                                width: double.infinity,
                                padding: const EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 30),
                                color: primary,
                                child: Center(
                                  child: CustomText(
                                    text: "Buy Now",
                                    color: screen,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Flexible(
                              child: Container(
                                width: double.infinity,
                                padding: const EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 30),
                                color: screen,
                                child: Center(
                                  child: CustomText(
                                    text: "Buy Now",
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )
            else
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 327,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://images.unsplash.com/photo-1660557989690-d09a28f6356e?crop=entropy&cs=tinysrgb&fm=jpg&ixid=Mnw3MjAxN3wwfDF8YWxsfDY0fHx8fHx8Mnx8MTY2MDY0MDUwNQ&ixlib=rb-1.2.1&q=80&q=85&fmt=jpg&crop=entropy&cs=tinysrgb&w=450'),
                            fit: BoxFit.cover)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: CustomText(
                      text: "White Aesthetic Chair",
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 3),
                    child: CustomText(
                      text: "Combination of wood and wool",
                      fontSize: 14,
                      color: paragraf,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 3),
                    child: CustomText(
                      text: "Color",
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: Row(
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          color: tile,
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          color: primary,
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          color: secondary,
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          color: screenthree,
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: ReadMoreText(
                      'Faucibus facilisi morbi pharetra quis sed. Vitae suspendisse facilisis facilisis ligula felis et a parturient aenean. Ac maecenas ultricies felis risus scelerisque duis posuere...',
                      trimLines: 2,
                      style: TextStyle(
                          color: paragraf,
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                      colorClickableText: primary,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: '...Read more',
                      trimExpandedText: ' show less',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: CustomText(
                      text: "\$99.98",
                      fontSize: 24,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 30),
                      color: primary,
                      child: Center(
                        child: CustomText(
                          text: "Buy Now",
                          color: screen,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 30),
                      color: screen,
                      child: Center(
                        child: CustomText(
                          text: "Buy Now",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            Padding(
              padding: const EdgeInsets.only(
                top: 100,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: "Related Items",
                    fontSize: ResponsiveWidget.isSmallScreen(context) ? 18 : 32,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 23),
                    child: GridView(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount:
                              ResponsiveWidget.isSmallScreen(context) ? 2 : 3,
                          mainAxisSpacing: 15,
                          crossAxisSpacing: 15,
                          mainAxisExtent:
                              ResponsiveWidget.isSmallScreen(context)
                                  ? 250
                                  : ResponsiveWidget.isMediumScreen(context)
                                      ? 450
                                      : 500),
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: ResponsiveWidget.isSmallScreen(context)
                                  ? 130
                                  : ResponsiveWidget.isMediumScreen(context)
                                      ? 230
                                      : 360,
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          "https://images.unsplash.com/photo-1567538096630-e0c55bd6374c?crop=entropy&cs=tinysrgb&fm=jpg&ixid=Mnw3MjAxN3wwfDF8c2VhcmNofDJ8fGNoYWlyfGVufDB8fHx8MTY2MDU5ODUwOQ&ixlib=rb-1.2.1&q=80&q=85&fmt=jpg&crop=entropy&cs=tinysrgb&w=450"))),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: CustomText(
                                text: "Decoratioin",
                                color: paragraf,
                                fontSize:
                                    ResponsiveWidget.isSmallScreen(context)
                                        ? 12
                                        : 18,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4),
                              child: CustomText(
                                text: "Wooden Aesthetic Chair",
                                fontSize:
                                    ResponsiveWidget.isSmallScreen(context)
                                        ? 14
                                        : 26,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 6),
                              child: CustomText(
                                text: "Combination of wood and wool",
                                color: paragraf,
                                fontSize:
                                    ResponsiveWidget.isSmallScreen(context)
                                        ? 14
                                        : 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 12),
                              child: CustomText(
                                text: "\$58.39",
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const FooterWidget()
          ],
        ),
      ),
    );
  }
}
