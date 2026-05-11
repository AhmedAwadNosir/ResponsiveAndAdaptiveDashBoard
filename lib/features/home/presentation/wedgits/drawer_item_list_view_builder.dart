import 'package:flutter/material.dart';
import 'package:myresponsive_dashboard/core/utils/app_images.dart';
import 'package:myresponsive_dashboard/features/home/data/models/drawer_item_modal.dart';
import 'package:myresponsive_dashboard/features/home/presentation/wedgits/cusotm_inactive_active_drawer_item.dart';

class DrawerItemSliverList extends StatefulWidget {
  const DrawerItemSliverList({super.key});

  @override
  State<DrawerItemSliverList> createState() => _DrawerItemSliverListState();
}

class _DrawerItemSliverListState extends State<DrawerItemSliverList> {
  List<DrawerItemModal> items = [
    DrawerItemModal(icon: AppImages.imagesDashboard, title: "Dashboard"),
    DrawerItemModal(icon: AppImages.imagesStatistics, title: "Statistics"),
    DrawerItemModal(
      icon: AppImages.imagesWalletAccount,
      title: "Wallet Account",
    ),
    DrawerItemModal(
      icon: AppImages.imagesMyInvestments,
      title: "My Investments",
    ),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (selectedIndex != index) {
              // to avoid rebuild if user click in the same icon more one time
              setState(() {
                selectedIndex = index;
              });
            }
          },
          child: selectedIndex == index
              ? ActiveDrawerItem(drawerItemModal: items[index])
              : InActiveDrawerItem(drawerItemModal: items[index]),
        );
      },
    );
  }
}
