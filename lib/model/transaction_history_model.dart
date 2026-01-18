class TransactionHistoryModel {
  final String title, date, mony;
  final bool isWithdrawal;

  TransactionHistoryModel({
    required this.title,
    required this.date,
    required this.mony,
    required this.isWithdrawal,
  });
}
