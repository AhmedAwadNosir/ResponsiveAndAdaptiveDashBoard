import 'package:flutter/material.dart';
import 'package:myresponsive_dashboard/core/utils/app_styles.dart';
import 'package:myresponsive_dashboard/features/home/presentation/wedgits/cusotm_dotted_indecator.dart';
import 'package:myresponsive_dashboard/features/home/presentation/wedgits/my_card.dart';
import 'package:myresponsive_dashboard/features/home/presentation/wedgits/mycard_page_veiw.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  int currentPageIndex = 0;
  late PageController pageController;
  @override
  void initState() {
    pageController = PageController();

    pageController.addListener(() {
      final int nextPageIndex = pageController.page!.round();

      // Only trigger a rebuild if the page index actually changed!
      if (currentPageIndex != nextPageIndex) {
        setState(() {
          currentPageIndex = nextPageIndex;
        });
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My card",
          style: AppStyles.styleSemiBold20(
            context,
          ).copyWith(fontWeight: FontWeight.w700),
        ),
        SizedBox(height: 20),
        MycardPageVeiw(pageController: pageController),
        SizedBox(height: 19),
        CustomDottedIndecator(currentPageIndex: currentPageIndex),
      ],
    );
  }
}
