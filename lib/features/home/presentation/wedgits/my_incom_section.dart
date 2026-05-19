import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myresponsive_dashboard/core/utils/app_images.dart';
import 'package:myresponsive_dashboard/core/utils/app_styles.dart';
import 'package:myresponsive_dashboard/features/home/presentation/wedgits/custom_bacground_container.dart';
import 'package:myresponsive_dashboard/features/home/presentation/wedgits/custom_dotted_container.dart';
import 'package:myresponsive_dashboard/features/home/presentation/wedgits/incom_chart_item_builder.dart';
import 'package:myresponsive_dashboard/features/home/presentation/wedgits/incom_header.dart';

class MyIncomSection extends StatelessWidget {
  const MyIncomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBacgroundContainer(
      child: Column(
        children: [
          IncomeHeader(),
          SizedBox(height: 6),
          Row(
            children: [
              // Image.asset(AppImages.imagesIcomcharts),
              SvgPicture.asset(AppImages.imagesIncomchart),
              SizedBox(width: 40),
              IncomChartItemBuilder(),
            ],
          ),
        ],
      ),
    );
  }
}
