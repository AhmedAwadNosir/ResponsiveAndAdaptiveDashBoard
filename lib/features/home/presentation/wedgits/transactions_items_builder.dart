import 'package:flutter/material.dart';
import 'package:myresponsive_dashboard/features/home/data/models/transaction_modal.dart';
import 'package:myresponsive_dashboard/features/home/presentation/wedgits/cusotm_transaction_history_item.dart';

class TransactionsItemsBuilder extends StatelessWidget {
  const TransactionsItemsBuilder({super.key});
  static List<TransactionModal> transacions = [
    TransactionModal(
      transactionTitle: "Cash Withdrawal",
      transacitonTime: "13 Apr, 2022",
      transactinoAmount: "\$20,129",
      monyColor: Color(0xffF3735E),
    ),
    TransactionModal(
      transactionTitle: "Landing Page project",
      transacitonTime: "13 Apr, 2022 at 3:30 PM",
      transactinoAmount: "\$2,000",
    ),
    TransactionModal(
      transactionTitle: "Juni Mobile App project",
      transacitonTime: "13 Apr, 2022 at 3:30 PM",
      transactinoAmount: "\$20,129",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: transacions
          .map(
            (transaction) => Padding(
              padding: const EdgeInsets.only(top: 12),
              child: CustomTransactionHistoryItem(
                transactionModal: transaction,
              ),
            ),
          )
          .toList(),
    );
  }
}
