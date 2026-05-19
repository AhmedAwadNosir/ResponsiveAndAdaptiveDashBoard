import 'package:flutter/material.dart';
import 'package:myresponsive_dashboard/core/utils/app_styles.dart';
import 'package:myresponsive_dashboard/features/home/presentation/wedgits/cusotm_button.dart';
import 'package:myresponsive_dashboard/features/home/presentation/wedgits/custom_bacground_container.dart';
import 'package:myresponsive_dashboard/features/home/presentation/wedgits/last_transaction_items_builder.dart';
import 'package:myresponsive_dashboard/features/home/presentation/wedgits/quick_invoice_form.dart';
import 'package:myresponsive_dashboard/features/home/presentation/wedgits/quiq_invoice_header.dart';

class QuickInvoiceSection extends StatelessWidget {
  const QuickInvoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBacgroundContainer(
      padding: EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuiqInvioceHeader(),
          SizedBox(height: 24),
          Text(
            "Latest Transaction",
            style: AppStyles.styleMedium16(
              context,
            ).copyWith(fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 12),
          LastTransactionItemsBuilder(),

          Divider(color: Color(0xfff1f1f1), height: 48),
          QuickInvoiceForm(),
          SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: CustomButton(
                  title: "Add more details",
                  bacgroudColor: Colors.white,
                  titleColor: Color(0xff4EB7F2),
                  elevation: 0,
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: CustomButton(
                  title: "Send Money",
                  bacgroudColor: Color(0xff4EB7F2),
                  titleColor: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
