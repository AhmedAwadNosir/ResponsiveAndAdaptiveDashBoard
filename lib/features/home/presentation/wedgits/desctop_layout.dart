import 'package:flutter/material.dart';
import 'package:myresponsive_dashboard/core/utils/app_images.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myresponsive_dashboard/core/utils/app_styles.dart';
import 'package:myresponsive_dashboard/features/home/data/models/drawer_item_modal.dart';
import 'package:myresponsive_dashboard/features/home/data/models/user_model.dart';
import 'package:myresponsive_dashboard/features/home/presentation/wedgits/cusotm_inactive_active_drawer_item.dart';
import 'package:myresponsive_dashboard/features/home/presentation/wedgits/custom_drawer.dart';
import 'package:myresponsive_dashboard/features/home/presentation/wedgits/custom_user_details_container.dart';
import 'package:myresponsive_dashboard/features/home/presentation/wedgits/drawer_item_list_view_builder.dart';

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
            child: Column(
              children: [
                Expanded(flex: 1, child: Container(color: Color(0xFFFFFFFF))),
                SizedBox(height: 24),
                Expanded(flex: 2, child: Container(color: Color(0xFFFFFFFF))),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              Expanded(flex: 3, child: Container(color: Color(0xFFFFFFFF))),
              SizedBox(height: 24),
              Expanded(flex: 1, child: Container(color: Color(0xFFFFFFFF))),
            ],
          ),
        ),
      ],
    );
  }
}
