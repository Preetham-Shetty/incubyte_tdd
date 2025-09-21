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

    test('transfer moves money between accounts', () {
      final a1 = BankAccount();
      final a2 = BankAccount();
      a1.deposit(100);
      a1.transferTo(a2, 40);
      expect(a1.balance, 60);
      expect(a2.balance, 40);
    });
  });
}
