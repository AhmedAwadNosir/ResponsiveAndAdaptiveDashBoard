import 'package:flutter/material.dart';
import 'package:myresponsive_dashboard/core/utils/app_styles.dart';

class QuiqInvioceHeader extends StatelessWidget {
  const QuiqInvioceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Quick Invoice",
          style: AppStyles.styleSemiBold20(
            context,
          ).copyWith(fontWeight: FontWeight.w700),
        ),
        Spacer(),
        CircleAvatar(
          backgroundColor: Color(0xffFAFAFA),
          radius: 26,
          child: Icon(Icons.add, color: Color(0xff4EB7F2), size: 20),
        ),
      ],
    );
  }
}
