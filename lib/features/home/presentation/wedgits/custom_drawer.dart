import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myresponsive_dashboard/core/utils/app_images.dart';
import 'package:myresponsive_dashboard/features/home/data/models/drawer_item_modal.dart';
import 'package:myresponsive_dashboard/features/home/data/models/user_model.dart';
import 'package:myresponsive_dashboard/features/home/presentation/wedgits/cusotm_inactive_active_drawer_item.dart';
import 'package:myresponsive_dashboard/features/home/presentation/wedgits/custom_user_details_container.dart';
import 'package:myresponsive_dashboard/features/home/presentation/wedgits/drawer_item_list_view_builder.dart';

// if u use list view in colum you must give it shrink wrap true and never scroll phsics but this
// make problem in preformance
// in cusotm scrol view you cannot use expaned widget dirctly
// but you can use sliverfialRemaing widget and use this widget in it but must give her
// scrollbody = false to scroll with custom scrol view
// dont use expande with listviewBuilder make problem
class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFFFFFFF),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 28,
          right: 20,
          top: 50,
          bottom: 28,
        ),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 12, right: 27),
                child: Container(
                  height: 53,
                  color: Color(0xffc4c4c4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [SvgPicture.asset(AppImages.imagesGallery)],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 8)),
            SliverToBoxAdapter(
              child: CustomUserDetailsContainer(
                userModel: UserModel(
                  avatar: AppImages.imagesAvatar1,
                  name: "Lekan Okeowo",
                  email: "demo@gmail.com",
                ),
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 8)),

            DrawerItemSliverList(),

            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  Expanded(child: SizedBox()),
                  InActiveDrawerItem(
                    drawerItemModal: DrawerItemModal(
                      icon: AppImages.imagesWalletAccount,
                      title: "Wallet Account",
                    ),
                  ),
                  InActiveDrawerItem(
                    drawerItemModal: DrawerItemModal(
                      icon: AppImages.imagesMyInvestments,
                      title: "My Investments",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
