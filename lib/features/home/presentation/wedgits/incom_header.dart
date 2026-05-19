import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myresponsive_dashboard/core/utils/app_images.dart';
import 'package:myresponsive_dashboard/core/utils/app_styles.dart';

class IncomeHeader extends StatelessWidget {
  const IncomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Income", style: AppStyles.styleSemiBold20(context)),
        Expanded(child: SizedBox()),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Color(0xfff1f1f1)),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Monthly", style: AppStyles.styleMedium16(context)),
              SizedBox(width: 18),
              SvgPicture.asset(AppImages.imagesArrowDown),
            ],
          ),
        ),
      ],
    );
  }
}
