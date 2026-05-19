import 'package:flutter/material.dart';
import 'package:myresponsive_dashboard/core/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    required this.bacgroudColor,
    required this.titleColor,
    this.elevation,
  });
  final String title;
  final Color bacgroudColor;
  final Color titleColor;
  final double? elevation;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          elevation: elevation,
          backgroundColor: bacgroudColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(12),
          ),
          padding: EdgeInsets.all(20),
        ),
        child: Text(
          title,
          style: AppStyles.styleSemiBold18(context).copyWith(color: titleColor),
        ),
      ),
    );
  }
}
