import 'package:flutter/material.dart';
import 'package:myresponsive_dashboard/core/utils/app_styles.dart';
import 'package:myresponsive_dashboard/features/home/presentation/wedgits/custom_bacground_container.dart';
import 'package:myresponsive_dashboard/features/home/presentation/wedgits/custom_dotted_items.dart';
import 'package:myresponsive_dashboard/features/home/presentation/wedgits/my_card.dart';
import 'package:myresponsive_dashboard/features/home/presentation/wedgits/transaction_history_header.dart';
import 'package:myresponsive_dashboard/features/home/presentation/wedgits/transactions_items_builder.dart';

class MyCardTransactions extends StatelessWidget {
  const MyCardTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBacgroundContainer(
      padding: EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "My card",
            style: AppStyles.styleSemiBold20(
              context,
            ).copyWith(fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 20),
          MyCard(),
          SizedBox(height: 19),
          CustomDottedItmes(),
          Divider(height: 40, color: Color(0xfff1f1f1)),
          TransactionHistoryHeader(),
          SizedBox(height: 20),
          Text(
            "13 April 2022",
            style: AppStyles.styleMedium16(
              context,
            ).copyWith(color: Color(0xffAAAAAA)),
          ),

          TransactionsItemsBuilder(),
        ],
      ),
    );
  }
}
