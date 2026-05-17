import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ExpancessItemHeader extends StatelessWidget {
  const ExpancessItemHeader({
    super.key,
    required this.icon,
    required this.iconColor,
    this.iconBackgroundColor,
    this.arrowIconColor,
  });
  final String icon;
  final Color iconColor;
  final Color? iconBackgroundColor;
  final Color? arrowIconColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 35,
          backgroundColor: iconBackgroundColor ?? Color(0xFFFAFAFA),
          child: SvgPicture.asset(
            icon,
            colorFilter: ColorFilter.mode(iconColor, BlendMode.srcATop),
          ),
        ),
        Spacer(),
        Icon(Icons.arrow_forward_ios, color: arrowIconColor),
      ],
    );
  }
}
