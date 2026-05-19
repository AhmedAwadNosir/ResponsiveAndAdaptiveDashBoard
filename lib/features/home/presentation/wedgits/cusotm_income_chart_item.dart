import 'package:flutter/material.dart';
import 'package:myresponsive_dashboard/core/utils/app_styles.dart';
import 'package:myresponsive_dashboard/features/home/data/models/chart_item_modal.dart';
import 'package:myresponsive_dashboard/features/home/presentation/wedgits/custom_dotted_container.dart';

class CustomIncomChartItem extends StatelessWidget {
  const CustomIncomChartItem({super.key, required this.chartItemModal});
  final ChartItemModal chartItemModal;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomDottedContainer(
          dotColor: chartItemModal.dotColor,
          hight: 12,
          width: 12,
          isActive: false,
        ),
        SizedBox(width: 4),
        Text(chartItemModal.title, style: AppStyles.styleRegular16(context)),
        Spacer(),
        Text(
          "${chartItemModal.precintage}%",
          style: AppStyles.styleMedium16(context),
        ),
      ],
    );
  }
}
