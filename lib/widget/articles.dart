import 'package:flutter/material.dart';
import 'package:lalasia/constants/style.dart';
import 'package:lalasia/helpers/reponsiveness.dart';
import 'package:lalasia/widget/custom_text.dart';

class ArticleWiddget extends StatelessWidget {
  const ArticleWiddget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: ResponsiveWidget.isSmallScreen(context) ? 24 : 100,
          vertical: 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: "Articles",
            color: secondary,
          ),
          const SizedBox(
            height: 10,
          ),
          !ResponsiveWidget.isSmallScreen(context)
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(child: _buildColumn(context)),
                    const SizedBox(
                      width: 20,
                    ),
                    Flexible(child: _buildColumn1(context)),
                  ],
                )
              : Column(
                  children: [
                    _buildColumn(context),
                    const SizedBox(
                      height: 20,
                    ),
                    _buildColumn1(context)
                  ],
                ),
        ],
      ),
    );
  }

  Column _buildColumn1(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: !ResponsiveWidget.isSmallScreen(context)
              ? MainAxisAlignment.end
              : MainAxisAlignment.start,
          crossAxisAlignment: !ResponsiveWidget.isSmallScreen(context)
              ? CrossAxisAlignment.end
              : CrossAxisAlignment.start,
          children: [
            Container(
              height: !ResponsiveWidget.isSmallScreen(context) ? 260 : 110,
              width: !ResponsiveWidget.isSmallScreen(context) ? 260 : 110,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/img/img_article_1.png'),
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Tips and Trick",
                    color: paragraf,
                    fontWeight: !ResponsiveWidget.isSmallScreen(context)
                        ? FontWeight.w500
                        : FontWeight.w700,
                    textAlign: TextAlign.left,
                    fontSize:
                        !ResponsiveWidget.isSmallScreen(context) ? 18 : 12,
                  ),
                  const SizedBox(
                    height: 21,
                  ),
                  Text(
                    "6 ways to give your home minimalistic vibes",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: tile,
                      fontWeight: !ResponsiveWidget.isSmallScreen(context)
                          ? FontWeight.w500
                          : FontWeight.w700,
                      fontSize:
                          !ResponsiveWidget.isSmallScreen(context) ? 18 : 16,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  const Text(
                    "Pellentesque etiam blandit in tincidunt at donec. Eget ipsum .",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: paragraf,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: !ResponsiveWidget.isSmallScreen(context)
                                ? 20
                                : 10,
                          ),
                          const SizedBox(
                            width: 24,
                          ),
                          Text(
                            "Janne Cooper",
                            style: TextStyle(
                                color: tile,
                                fontSize:
                                    !ResponsiveWidget.isSmallScreen(context)
                                        ? 14
                                        : 12,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      Visibility(
                        visible: !ResponsiveWidget.isSmallScreen(context),
                        child: const Text(
                          "Friday, 1 April 2022",
                          style: TextStyle(
                              color: paragraf,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: !ResponsiveWidget.isSmallScreen(context)
              ? MainAxisAlignment.end
              : MainAxisAlignment.start,
          crossAxisAlignment: !ResponsiveWidget.isSmallScreen(context)
              ? CrossAxisAlignment.end
              : CrossAxisAlignment.start,
          children: [
            Container(
              height: !ResponsiveWidget.isSmallScreen(context) ? 260 : 110,
              width: !ResponsiveWidget.isSmallScreen(context) ? 260 : 110,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/img/img_article_2.png'),
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Tips and Trick",
                    color: paragraf,
                    fontWeight: !ResponsiveWidget.isSmallScreen(context)
                        ? FontWeight.w500
                        : FontWeight.w700,
                    textAlign: TextAlign.left,
                    fontSize:
                        !ResponsiveWidget.isSmallScreen(context) ? 18 : 12,
                  ),
                  const SizedBox(
                    height: 21,
                  ),
                  Text(
                    "6 ways to give your home minimalistic vibes",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: tile,
                      fontWeight: !ResponsiveWidget.isSmallScreen(context)
                          ? FontWeight.w500
                          : FontWeight.w700,
                      fontSize:
                          !ResponsiveWidget.isSmallScreen(context) ? 18 : 16,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  const Text(
                    "Pellentesque etiam blandit in tincidunt at donec. Eget ipsum .",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: paragraf,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: !ResponsiveWidget.isSmallScreen(context)
                                ? 20
                                : 10,
                          ),
                          const SizedBox(
                            width: 24,
                          ),
                          Text(
                            "Janne Cooper",
                            style: TextStyle(
                                color: tile,
                                fontSize:
                                    !ResponsiveWidget.isSmallScreen(context)
                                        ? 14
                                        : 12,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      Visibility(
                        visible: !ResponsiveWidget.isSmallScreen(context),
                        child: const Text(
                          "Friday, 1 April 2022",
                          style: TextStyle(
                              color: paragraf,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }

  Column _buildColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(
          text: "The best furniture comes from Lalasia",
          fontSize: 44,
          textAlign: TextAlign.left,
          maxLine: 2,
        ),
        const SizedBox(
          height: 30,
        ),
        CustomText(
          text: "Pellentesque etiam blandit in tincidunt at donec. ",
          fontWeight: FontWeight.w500,
          textAlign: TextAlign.left,
          maxLine: 2,
        ),
        const SizedBox(
          height: 50,
        ),
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 565,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/img/img_article.png'),
                    fit: BoxFit.cover),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: "Tips and Trick",
                      color: screen.withOpacity(.7),
                      fontWeight: FontWeight.w500,
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Create Cozy Dinning Room Vibes",
                      style: TextStyle(
                          color: screen,
                          fontWeight: FontWeight.w700,
                          fontSize: 26),
                      textAlign: TextAlign.left,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Decorating with neutrals brings balance to the dining room. With eclectic decoration on the sides, Caruso Dining Table and Cyrillo Dining Chairs elevate the tonal base of the room. The modern furniture set gives personality to any space in all types of architecture.‎ The wide volume enables everyone to sit back and relax, be it in the dining room, conference, or office.",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: screen.withOpacity(.7),
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    CustomText(
                      text: "Read More",
                      color: screen,
                      fontWeight: FontWeight.w500,
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: -50,
              right: 0,
              child: Visibility(
                visible: !ResponsiveWidget.isSmallScreen(context),
                child: SizedBox(
                  width: 140,
                  height: 70,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(21),
                          color: screen,
                          child: const Center(
                              child: Icon(
                            Icons.arrow_back_outlined,
                            color: primary,
                          )),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(21),
                          color: primary,
                          child: const Center(
                              child: Icon(
                            Icons.arrow_forward,
                            color: screen,
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
