import 'package:flutter/material.dart';
import 'package:myresponsive_dashboard/features/home/presentation/wedgits/custom_bacground_container.dart';
import 'package:myresponsive_dashboard/features/home/presentation/wedgits/custom_drawer.dart';
import 'package:myresponsive_dashboard/features/home/presentation/wedgits/middle_section.dart';
import 'package:myresponsive_dashboard/features/home/presentation/wedgits/my_card_mony_flow_section.dart';

class DesctopLayout extends StatelessWidget {
  const DesctopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 1, child: CustomDrawer()),
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 40,
              bottom: 32,
              left: 32,
              right: 24,
            ),
            child: MiddleSection(),
          ),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.only(top: 40, bottom: 32, right: 32),
            child: MyCardMonyFlowSection(),
          ),
        ),
      ],
    );
  }
}
