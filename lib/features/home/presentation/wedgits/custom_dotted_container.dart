import 'package:flutter/material.dart';

class CustomDottedContainer extends StatelessWidget {
  const CustomDottedContainer({
    super.key,
    this.dotColor,
    this.hight,
    this.width,
  });
  final Color? dotColor;
  final double? hight;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: hight ?? 8,
      width: width ?? 8,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: dotColor ?? Color(0xffE8E8E8),
      ),
    );
  }
}
