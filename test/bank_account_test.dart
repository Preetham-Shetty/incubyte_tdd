import 'package:flutter_test/flutter_test.dart';
import 'package:incubyte_tdd/bank_account.dart';

void main() {
  group('BankAccount', () {
    test('new account should start with 0 balance', () {
      final account = BankAccount();
      expect(account.balance, 0);
    });

    test('deposit increases balance', () {
      final account = BankAccount();
      account.deposit(100);
      expect(account.balance, 100);
    });

    test('withdraw decreases balance', () {
      final account = BankAccount();
      account.deposit(200);
      account.withdraw(50);
      expect(account.balance, 150);
    });

    test('cannot withdraw more than balance', () {
      final account = BankAccount();
      account.deposit(50);
      expect(() => account.withdraw(100), throwsA(isA<Exception>()));
    });
  });
}
