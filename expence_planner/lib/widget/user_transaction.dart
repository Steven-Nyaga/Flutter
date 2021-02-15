import 'package:expence_planner/widget/new_transaction.dart';
import 'package:flutter/material.dart';
import './transaction_list.dart';
import './new_transaction.dart';
import '../model/transactions.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transactions> _transactions = [
    Transactions(
        id: 't1', title: 'New Shoes', amount: 69.99, date: DateTime.now()),
    Transactions(
        id: 't2', title: 'Clothes', amount: 70.99, date: DateTime.now())
  ];

  void _addTransaction(String addTitle, double addAmount) {
    final newTx = Transactions(
        title: addTitle,
        amount: addAmount,
        date: DateTime.now(),
        id: DateTime.now().toString());

        setState(() {
                  _transactions.add(newTx);
                });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [NewTransaction(_addTransaction), TransactionList(_transactions)],
    );
  }
}
