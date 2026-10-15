class BankAccount {
  String accountHolder;

  double _balance;

  BankAccount(this.accountHolder, this._balance);

  double get balance => _balance;

  void deposite(double amount) {
    if (amount > 0) {
      _balance += amount;
      print("Deposited ${amount.toStringAsFixed(2)}");
    } else {
      print("The amount is grather than 0");
    }
  }

  void withdraw(double amount) {
    if (amount <= 0) {
      print("Width draw amount grather than 0");
    } else if (amount <= _balance) {
      _balance -= amount;
      print("Widthdraw :${amount}");
    } else {
      print("Balance : ${_balance}");
      print("Widthdraw : ${amount}");
      print("Insufficent funds!");
    }
  }
}

void main() {
  BankAccount account = BankAccount("Aung Aung", 100);

  print('Account Holder: ${account.accountHolder}');
  print('Balance: ${account._balance}');
  print("___________________________________________");
  account.deposite(200);
  print('Account Holder: ${account.accountHolder}');
  print('Balance: ${account._balance}');
  print("___________________________________________");
  account.withdraw(400);
  print('Account Holder: ${account.accountHolder}');
  print('Balance: ${account._balance}');
}
