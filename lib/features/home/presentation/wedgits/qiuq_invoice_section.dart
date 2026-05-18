import 'package:flutter/material.dart';
import 'package:myresponsive_dashboard/core/utils/app_styles.dart';
import 'package:myresponsive_dashboard/features/home/presentation/wedgits/last_transaction_items_builder.dart';
import 'package:myresponsive_dashboard/features/home/presentation/wedgits/quick_invoice_form.dart';

class QiuqInvoiceSection extends StatelessWidget {
  const QiuqInvoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Latest Transaction", style: AppStyles.styleMedium16(context)),
        SizedBox(height: 12),
        SizedBox(height: 72, child: LastTransactionItemsBuilder()),
        QuickInvoiceForm(),
        SizedBox(height: 8),
        Row(
          children: [
            Text("Add more details", style: AppStyles.styleSemiBold18(context)),
            SizedBox(width: 16),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Send Money",
                style: AppStyles.styleSemiBold18(context),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
