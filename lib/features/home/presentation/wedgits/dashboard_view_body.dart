import 'package:flutter/material.dart';
import 'package:myresponsive_dashboard/features/home/presentation/wedgits/adaptive_layout.dart';
import 'package:myresponsive_dashboard/features/home/presentation/wedgits/desctop_layout.dart';

class DashboardViewBody extends StatelessWidget {
  const DashboardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      mobileLayout: (context) => Text("mobileLayout"),
      tabletLayout: (context) => Text("tabletLayout"),
      descktopLayout: (context) => DesctopLayout(),
    );
  }
}
