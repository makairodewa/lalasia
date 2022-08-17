import 'package:flutter/material.dart';
import 'package:lalasia/constants/style.dart';

// ignore: must_be_immutable
class CustomText extends StatelessWidget {
  CustomText({
    Key? key,
    required this.text,
    this.fontWeight,
    this.fontSize,
    this.textAlign,
    this.color,
    this.maxLine,
  }) : super(key: key);
  final String text;
  final FontWeight? fontWeight;
  double? fontSize;
  final TextAlign? textAlign;
  final Color? color;
  final int? maxLine;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color ?? tile,
          fontWeight: fontWeight ?? FontWeight.w700,
          fontSize: fontSize ?? 18),
      textAlign: textAlign ?? TextAlign.left,
      maxLines: maxLine ?? 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}
