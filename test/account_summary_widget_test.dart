import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:incubyte_tdd/account_summary_widget.dart';
import 'package:incubyte_tdd/bank_account.dart';

void main() {
  testWidgets('displays correct balance', (WidgetTester tester) async {
    final account = BankAccount();
    account.deposit(200);

    await tester.pumpWidget(
      MaterialApp(home: AccountSummaryWidget(account: account)),
    );

    expect(find.text('Account Balance'), findsOneWidget);
    expect(find.text('200'), findsOneWidget);
  });
}
