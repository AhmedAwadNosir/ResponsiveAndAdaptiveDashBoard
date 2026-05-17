import 'package:flutter/material.dart';
import 'package:myresponsive_dashboard/features/home/presentation/wedgits/custom_drawer.dart';
import 'package:myresponsive_dashboard/features/home/presentation/wedgits/All_expansess.dart';

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
              left: 32,
              bottom: 32,
              right: 24,
            ),
            child: AllExpancess(),
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
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                SizedBox(height: 24),
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(12),
                    ),
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
