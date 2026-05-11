import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myresponsive_dashboard/core/utils/app_styles.dart';
import 'package:myresponsive_dashboard/features/home/data/models/drawer_item_modal.dart';

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({super.key, required this.drawerItemModal});
  final DrawerItemModal drawerItemModal;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: ListTile(
        contentPadding: EdgeInsets.only(left: 0),
        leading: SvgPicture.asset(drawerItemModal.icon),
        title: Text(
          drawerItemModal.title,
          style: AppStyles.styleBold16(context),
        ),
        trailing: Container(width: 3.27, color: Color(0xff4EB7F2)),
      ),
    );
  }
}

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({super.key, required this.drawerItemModal});
  final DrawerItemModal drawerItemModal;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: ListTile(
        contentPadding: EdgeInsets.only(left: 0),
        leading: SvgPicture.asset(drawerItemModal.icon),
        title: Text(
          drawerItemModal.title,
          style: AppStyles.styleRegular16(context),
        ),
      ),
    );
  }
}
