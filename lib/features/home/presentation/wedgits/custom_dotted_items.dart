import 'package:flutter/material.dart';
import 'package:myresponsive_dashboard/features/home/presentation/wedgits/custom_dotted_container.dart';

class CustomDottedItmes extends StatelessWidget {
  const CustomDottedItmes({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 8,
          width: 32,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Color(0xff4EB7F2),
          ),
        ),
        SizedBox(width: 8),
        CustomDottedContainer(),
        SizedBox(width: 8),
        CustomDottedContainer(),
      ],
    );
  }
}
