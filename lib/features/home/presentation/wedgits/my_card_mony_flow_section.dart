import 'package:flutter/material.dart';
import 'package:myresponsive_dashboard/features/home/presentation/wedgits/my_card_transactions.dart';
import 'package:myresponsive_dashboard/features/home/presentation/wedgits/my_incom_section.dart';

class MyCardMonyFlowSection extends StatelessWidget {
  const MyCardMonyFlowSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          MyCardTransactions(),
          SizedBox(height: 24),
          MyIncomSection(),
        ],
      ),
    );
  }
}
