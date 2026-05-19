import 'package:flutter/material.dart';
import 'package:myresponsive_dashboard/core/utils/app_styles.dart';
import 'package:myresponsive_dashboard/features/home/data/models/transaction_modal.dart';

class CustomTransactionHistoryItem extends StatelessWidget {
  const CustomTransactionHistoryItem({
    super.key,
    required this.transactionModal,
  });
  final TransactionModal transactionModal;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xffFAFAFA),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                transactionModal.transactionTitle,
                style: AppStyles.styleSemiBold16(context),
              ),
              SizedBox(height: 3),
              Text(
                transactionModal.transacitonTime,
                style: AppStyles.styleRegular16(
                  context,
                ).copyWith(color: Color(0xffAAAAAA)),
              ),
            ],
          ),
          Text(
            transactionModal.transactinoAmount,
            style: AppStyles.styleSemiBold20(
              context,
            ).copyWith(color: transactionModal.monyColor ?? Color(0xff7DD97B)),
          ),
        ],
      ),
    );
  }
}
