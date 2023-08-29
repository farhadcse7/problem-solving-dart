/*মডিউল ৪ এর এসাইনমেন্ট*/

//Account abstract class
abstract class Account {
  int accountNumber;
  double balance;

  Account(this.accountNumber, this.balance);

  void deposit(double amount) {
    balance += amount;
    print('Deposited $amount. New balance after deposit: $balance');
  }

  void withdraw(double amount);
}

//SavingsAccount class
class SavingsAccount extends Account {
  double interestRate;

  SavingsAccount(int accountNumber, double balance, this.interestRate)
      : super(accountNumber, balance);

  @override
  void withdraw(double amount) {
    balance -= amount;
    balance += balance * interestRate;
    print('Withdrew $amount. Final balance with $interestRate interest rate: $balance');
  }
}

//CurrentAccount class
class CurrentAccount extends Account {
  double overdraftLimit;

  CurrentAccount(int accountNumber, double balance, this.overdraftLimit)
      : super(accountNumber, balance);

  @override
  void withdraw(double amount) {
    if (amount <= overdraftLimit) {
      balance -= amount;
      print('Withdrew $amount Successfully. Final balance: $balance');
    } else {
      print('Insufficient funds for withdrawal of $amount \nNote: Overdraft Limit $overdraftLimit');
    }
  }
}

//main class
void main() {

  print('Savings Account Information:\n----------------------------');
  //SavingsAccount instance with: Account Number, Initial Balance, Interest Rate
  var savingsAccount = SavingsAccount(12345, 1000, 0.05);
  print('Saving account initial balance: ${savingsAccount.balance}');
  savingsAccount.deposit(500);
  savingsAccount.withdraw(200);

  print('\nCurrent Account Information:\n---------------------------');
 // CurrentAccount instance with: Account Number, Initial Balance, Overdraft Limit
  var currentAccount = CurrentAccount(67890, 1500, 1000);
  print('Current account initial balance: ${currentAccount.balance}');
  currentAccount.deposit(200);
  currentAccount.withdraw(2000); //Show Insufficient funds because overdraftlimit = 1000
}

