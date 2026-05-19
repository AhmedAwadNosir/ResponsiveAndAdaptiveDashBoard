import 'package:flutter/material.dart';
import 'package:myresponsive_dashboard/features/home/presentation/wedgits/custom_dotted_container.dart';

class CustomDottedIndecator extends StatelessWidget {
  const CustomDottedIndecator({super.key, required this.currentPageIndex});
  final int currentPageIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(3, (index) {
        return Padding(
          padding: const EdgeInsets.only(right: 8),
          child: CustomDottedContainer(isActive: index == currentPageIndex),
        );
      }),
    );
  }
}
