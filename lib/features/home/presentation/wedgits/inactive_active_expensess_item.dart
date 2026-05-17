import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myresponsive_dashboard/core/utils/app_images.dart';
import 'package:myresponsive_dashboard/core/utils/app_styles.dart';
import 'package:myresponsive_dashboard/features/home/data/models/all_expansess_item_modal.dart';
import 'package:myresponsive_dashboard/features/home/presentation/wedgits/expansess_item_header.dart';

class InactiveExpensessItem extends StatelessWidget {
  const InactiveExpensessItem({super.key, required this.allExpansessItemModal});
  final AllExpansessItemModal allExpansessItemModal;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Color(0xfff1f1f1)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ExpancessItemHeader(
            icon: allExpansessItemModal.icon,
            iconColor: Color(0xff4EB7F2),
          ),
          SizedBox(height: 34),
          Text(
            allExpansessItemModal.title,
            style: AppStyles.styleSemiBold16(context),
          ),
          SizedBox(height: 8),
          Text(
            allExpansessItemModal.rangeTime,
            style: AppStyles.styleRegular14(context),
          ),
          SizedBox(height: 16),
          Text(
            allExpansessItemModal.welth,
            style: AppStyles.styleSemiBold24(context),
          ),
        ],
      ),
    );
  }
}

class ActiveExpensessItem extends StatelessWidget {
  const ActiveExpensessItem({super.key, required this.allExpansessItemModal});
  final AllExpansessItemModal allExpansessItemModal;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        color: Color(0xff4EB7F2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ExpancessItemHeader(
            icon: allExpansessItemModal.icon,
            iconColor: Colors.white,
            iconBackgroundColor: Colors.white.withValues(alpha: 0.1),
            arrowIconColor: Colors.white,
          ),
          SizedBox(height: 32),
          Text(
            allExpansessItemModal.title,
            style: AppStyles.styleSemiBold16(
              context,
            ).copyWith(color: Colors.white),
          ),
          SizedBox(height: 8),
          Text(
            allExpansessItemModal.rangeTime,
            style: AppStyles.styleRegular14(
              context,
            ).copyWith(color: Colors.white),
          ),
          SizedBox(height: 16),
          Text(
            allExpansessItemModal.welth,
            style: AppStyles.styleSemiBold24(
              context,
            ).copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
