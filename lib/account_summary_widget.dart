import 'package:flutter/material.dart';
import 'bank_account.dart';

class AccountSummaryWidget extends StatelessWidget {
  final BankAccount account;

  const AccountSummaryWidget({super.key, required this.account});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              'Account Balance',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              '${account.balance}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
    );
  }
}
