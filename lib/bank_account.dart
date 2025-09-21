class BankAccount {
  int _balance = 0;
  int get balance => _balance;

  void deposit(int amount) {
    if (amount <= 0) throw ArgumentError('Deposit must be positive');
    _balance += amount;
  }
}
