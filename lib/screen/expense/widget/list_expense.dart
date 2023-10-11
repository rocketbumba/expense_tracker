import 'package:expense_tracker/screen/expense/model/expense.dart';
import 'package:expense_tracker/screen/expense/widget/item_expense.dart';
import 'package:flutter/material.dart';

class ListExpenses extends StatelessWidget {
  const ListExpenses(
      {required this.listExpenses, required this.remvoveExpense, Key? key})
      : super(key: key);
  final List<Expense> listExpenses;
  final void Function(Expense) remvoveExpense;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listExpenses.length,
      itemBuilder: ((context, index) => Dismissible(
          onDismissed: ((direction) {
            remvoveExpense(listExpenses[index]);
          }),
          key: ValueKey(listExpenses[index]),
          child: ItemExpense(listExpenses[index]))),
    );
  }
}
