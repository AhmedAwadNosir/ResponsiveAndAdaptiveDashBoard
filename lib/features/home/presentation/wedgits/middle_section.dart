import 'package:flutter/material.dart';
import 'package:myresponsive_dashboard/features/home/presentation/wedgits/All_expansess.dart';
import 'package:myresponsive_dashboard/features/home/presentation/wedgits/quick_invoice_section.dart';

class MiddleSection extends StatelessWidget {
  const MiddleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [AllExpancess(), SizedBox(height: 24), QuickInvoiceSection()],
      ),
    );
  }
}
