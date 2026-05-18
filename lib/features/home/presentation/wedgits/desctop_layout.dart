import 'package:flutter/material.dart';
import 'package:myresponsive_dashboard/features/home/presentation/wedgits/custom_bacground_container.dart';
import 'package:myresponsive_dashboard/features/home/presentation/wedgits/custom_drawer.dart';
import 'package:myresponsive_dashboard/features/home/presentation/wedgits/All_expansess.dart';
import 'package:myresponsive_dashboard/features/home/presentation/wedgits/middle_section.dart';

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
            padding: const EdgeInsets.only(left: 32, right: 24),
            child: MiddleSection(),
          ),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.only(top: 40, right: 32),
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: CustomBacgroundContainer(
                    padding: EdgeInsets.all(24),
                    child: SizedBox(),
                  ),
                ),
                SizedBox(height: 24),
                Expanded(
                  flex: 1,
                  child: CustomBacgroundContainer(
                    padding: EdgeInsets.only(top: 20, right: 20, left: 20),
                    child: SizedBox(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
