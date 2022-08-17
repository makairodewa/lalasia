import 'package:flutter/material.dart';
import 'package:lalasia/widget/articles.dart';
import 'package:lalasia/widget/benefits.dart';
import 'package:lalasia/widget/footer.dart';
import 'package:lalasia/widget/header.dart';
import 'package:lalasia/widget/our_produts.dart';
import 'package:lalasia/widget/products.dart';
import 'package:lalasia/widget/search.dart';
import 'package:lalasia/widget/testimonials.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          HeaderWidget(),
          SearchWidget(),
          BenfefitsWidget(),
          ProductsWidget(),
          OurProductsWidget(),
          TestimonialsWidget(),
          ArticleWiddget(),
          FooterWidget()
        ],
      ),
    );
  }
}
