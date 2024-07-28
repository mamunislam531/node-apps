import 'package:flutter/material.dart';


class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.title,
    this.color,
    this.fSize,
    this.fWeight,
  });
  final String title;
  final Color? color;
  final double? fSize;
  final FontWeight? fWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: color ?? Colors.grey.shade200,
        fontSize: fSize ?? 12,
        fontWeight: fWeight ?? FontWeight.normal,
      ),
    );
  }
}