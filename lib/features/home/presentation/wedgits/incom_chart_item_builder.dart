import 'package:flutter/material.dart';
import 'package:myresponsive_dashboard/features/home/data/models/chart_item_modal.dart';
import 'package:myresponsive_dashboard/features/home/presentation/wedgits/cusotm_income_chart_item.dart';

class IncomChartItemBuilder extends StatelessWidget {
  const IncomChartItemBuilder({super.key});
  static List<ChartItemModal> items = [
    ChartItemModal(
      title: "Design service",
      precintage: "40",
      dotColor: Color(0xff208CC8),
    ),
    ChartItemModal(
      title: "Design product",
      precintage: "25",
      dotColor: Color(0xff4EB7F2),
    ),
    ChartItemModal(
      title: "Product royalti",
      precintage: "20",
      dotColor: Color(0xff064061),
    ),
    ChartItemModal(title: "Other", precintage: "15"),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: items
            .map(
              (item) => Padding(
                padding: const EdgeInsets.only(top: 12),
                child: CustomIncomChartItem(chartItemModal: item),
              ),
            )
            .toList(),
      ),
    );
  }
}
