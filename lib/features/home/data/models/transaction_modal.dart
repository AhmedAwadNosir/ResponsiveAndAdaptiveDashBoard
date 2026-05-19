import 'dart:ui';

class TransactionModal {
  final String transactionTitle;
  final String transacitonTime;
  final String transactinoAmount;
  final Color? monyColor;

  TransactionModal({
    required this.transactionTitle,
    required this.transacitonTime,
    required this.transactinoAmount,
    this.monyColor,
  });
}
