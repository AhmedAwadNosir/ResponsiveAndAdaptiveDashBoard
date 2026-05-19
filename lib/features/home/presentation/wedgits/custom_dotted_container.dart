import 'package:flutter/material.dart';

class CustomDottedContainer extends StatelessWidget {
  const CustomDottedContainer({
    super.key,
    this.dotColor,
    this.hight,
    this.width,
    required this.isActive,
  });
  final Color? dotColor;
  final double? hight;
  final double? width;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(microseconds: 300),
      height: hight ?? 8,
      width: isActive ? 32 : (width ?? 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: isActive ? Color(0xff4EB7F2) : (dotColor ?? Color(0xffE8E8E8)),
      ),
    );
  }
}
