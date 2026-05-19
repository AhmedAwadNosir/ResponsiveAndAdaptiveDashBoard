import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:myresponsive_dashboard/features/home/presentation/wedgits/my_card.dart';

class MycardPageVeiw extends StatelessWidget {
  const MycardPageVeiw({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: pageController,
      scrollDirection: Axis.horizontal,
      children: List.generate(3, (index) {
        return Padding(
          padding: const EdgeInsets.only(right: 8),
          child: MyCard(),
        );
      }),
    );
  }
}
