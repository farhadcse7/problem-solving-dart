// // // import 'dart:io';

// // // void main() {
// // //   List<double> expenses = [];
// // //   double total = 0.0;

// // //   while (true) {
// // //     stdout.write('Enter an expense amount (or "q" to quit): ');
// // //     String input = stdin.readLineSync()!;
// // //     if (input == 'q') {
// // //       break;
// // //     }
// // //     double expense = double.tryParse(input)!;
// // //     if (expense == null) {
// // //       print('Invalid input. Try again.');
// // //       continue;
// // //     }
// // //     expenses.add(expense);
// // //     total += expense;
// // //   }

// // //   print('Expenses: $expenses');
// // //   print('Total: $total');
// // // }



// // class Person {
// //   String name;
// //   int age;
// //   String address;

// // // Constructor takes name, age, and address
// //   Person(this.name, this.age, this.address);

// //   // Method print my name
// //   void sayHello() {
// //     print("Hello, my name is $name.");
// //   }

// //   //Method return age in months
// //   int getAgeInMonths() {
// //     return age * 12;
// //   }

// // }

// // //Main function
// // void main() {
// //   String name = "Ostad"; // assign your name
// //   int age = 25; //assign your age
// //   String address = "Baridhara, Dhaka"; //assign any address
// //   Person person = Person(name, age, address);
// //   person.sayHello();
// //   int ageInMonths = person.getAgeInMonths();
// //   print("Age in months:$ageInMonths");
// // }

// class Car {
//   String brand;
//   String model;
//   int year;
//   double milesDriven ;
//   static int numberOfCars = 0;

//   Car(this.brand, this.model, this.year, this.milesDriven) {
//     numberOfCars++;
//   }

//   void drive(double miles) {
//     milesDriven += miles;
//   }

//   double getMilesDriven() {
//     return milesDriven;
//   }
//   String getBrand() {
//     return brand;
//   }
//   String getModel() {
//     return model;
//   }

//   int getYear() {
//     return year;
//   }

//   int getAge() {
//     return DateTime.now().year -year;

//   }

//   }

// void main() {
//  Car car1 = Car('Toyota','X-corolla',2020,8000);
//  Car car2 = Car('Honda','Civic', 2015,15000);
//  Car car3 = Car('Ford','F-150', 2018,10000);

//  car1.drive(1000);
//  car2.drive(1500);
//  car3.drive(1200);

//  print('${car1.getBrand()}, ${car1.getModel()},${car1.getYear()},Miles:${car1.getMilesDriven()},Age: ${car1.getAge()}');
//  print('${car2.getBrand()}, ${car2.getModel()},${car2.getYear()},Miles:${car2.getMilesDriven()},Age: ${car2.getAge()}');
//  print('${car3.getBrand()}, ${car3.getModel()},${car3.getYear()},Miles:${car3.getMilesDriven()},Age: ${car3.getAge()}');
// }


//CHATGPT

abstract class Account {
  int accountNumber;
  double balance;

  Account(this.accountNumber, this.balance);

  void deposit(double amount) {
    balance += amount;
    print('Deposited $amount. New balance: $balance');
  }

  void withdraw(double amount);
}

class SavingsAccount extends Account {
  double interestRate;

  SavingsAccount(int accountNumber, double balance, this.interestRate)
      : super(accountNumber, balance);

  @override
  void withdraw(double amount) {
    balance -= amount;
    balance += balance * interestRate;
    print('Withdrew $amount. New balance: $balance');
  }
}

class CurrentAccount extends Account {
  double overdraftLimit;

  CurrentAccount(int accountNumber, double balance, this.overdraftLimit)
      : super(accountNumber, balance);

  @override
  void withdraw(double amount) {
    if (amount <= balance + overdraftLimit) {
      balance -= amount;
      print('Withdrew $amount. New balance: $balance');
    } else {
      print('Insufficient funds for withdrawal of $amount');
    }
  }
}

void main() {
  // Create a SavingsAccount instance
  final savingsAccount = SavingsAccount(12345, 1000, 0.05);
  savingsAccount.deposit(500);
  savingsAccount.withdraw(200);

  // Create a CurrentAccount instance
  final currentAccount = CurrentAccount(67890, 1500, 500);
  currentAccount.deposit(200);
  currentAccount.withdraw(2000);
}



//BIRD
abstract class Account {
  int accountNumber;
  double balance;

  void deposit(double amount);

  // Abstract method
  void withdraw(double amount);
}

class SavingsAccount extends Account {
  double interestRate;

  @override
  void withdraw(double amount) {
    balance -= amount;
    balance = balance * (1 + interestRate);
  }
}

class CurrentAccount extends Account {
  double overdraftLimit;

  @override
  void withdraw(double amount) {
    if (amount <= overdraftLimit) {
      balance -= amount;
    } else {
      print('Insufficient funds');
    }
  }
}

void main() {
  // Create an instance of the SavingsAccount class
  SavingsAccount savingsAccount = SavingsAccount(
      accountNumber: 123456, balance: 1000, interestRate: 0.05);

  // Deposit money into the savings account
  savingsAccount.deposit(500);

  // Withdraw money from the savings account
  savingsAccount.withdraw(200);

  // Print the balance of the savings account
  print(savingsAccount.balance);

  // Create an instance of the CurrentAccount class
  CurrentAccount currentAccount = CurrentAccount(
      accountNumber: 789101, balance: 500, overdraftLimit: 1000);

  // Deposit money into the current account
  currentAccount.deposit(1000);

  // Withdraw money from the current account
  currentAccount.withdraw(1500);

  // Print the balance of the current account
  print(currentAccount.balance);
}
 


 // BING CHAT

 abstract class Account {
  int accountNumber;
  double balance;

  Account(this.accountNumber, this.balance);

  void deposit(double amount) {
    balance += amount;
  }

  void withdraw(double amount);
}

class SavingsAccount extends Account {
  double interestRate;

  SavingsAccount(int accountNumber, double balance, this.interestRate)
      : super(accountNumber, balance);

  @override
  void withdraw(double amount) {
    balance -= amount;
    balance += balance * interestRate;
  }
}

class CurrentAccount extends Account {
  double overdraftLimit;

  CurrentAccount(int accountNumber, double balance, this.overdraftLimit)
      : super(accountNumber, balance);

  @override
  void withdraw(double amount) {
    if (amount <= overdraftLimit + balance) {
      balance -= amount;
    } else {
      print('Insufficient funds');
    }
  }
}

void main() {
  var savings = SavingsAccount(12345, 1000.0, 0.05);
  savings.deposit(500.0);
  savings.withdraw(200.0);
  
  var current = CurrentAccount(67890, 500.0, -1000.0);
  current.deposit(100.0);
  current.withdraw(200.0);
}




//git

///Abstract class
abstract class Account {
  int accountNumber;
  double balance;

  Account(this.accountNumber, this.balance);

  void deposit(double amount) {
    print('Deposit: $amount');
    balance = balance + amount;
  }

  void withdraw(double amount);
}



///SavingAccount class extends Account class
class SavingsAccount extends Account {
  double interestRate;

  SavingsAccount(int accountNumber, double balance, this.interestRate )
      : super(accountNumber, balance);

  @override
  void withdraw(double amount) {
    if (amount <= balance) {
      balance = balance - amount;
      balance = balance + ((balance * interestRate) / 100);
      print('Withdrawn: \$${amount.toStringAsFixed(2)}');
    } else {
      print('Insufficient funds');
    }
  }
}




///CurrentAccount class extends Account class
class CurrentAccount extends Account{
  double overdraftLimit;
  CurrentAccount(int accountNumber, double balance, this.overdraftLimit):super(accountNumber, balance);

  @override
  void withdraw(double amount){
    if(amount <= overdraftLimit){
      balance = balance - amount;
    }else{
      print('Insufficient funds');
    }
  }
}


///Main function
void main() {

  print('SavingsAccount Information:');
  var savings = SavingsAccount(110, 1000.0, 5);
  print('Initial balance: \$${savings.balance.toStringAsFixed(2)}');
  savings.deposit(500.0);
  savings.withdraw(800.0);
  print('Current balance after deposit and withdraw and adding ${savings.interestRate}% interest : \$${savings.balance.toStringAsFixed(2)}\n');

  print('CurrentAccount Information');
  var current = CurrentAccount(221, 2000.0, 500.0);
  print('Initial balance: \$${current.balance.toStringAsFixed(2)}');
  current.deposit(600.0);
  current.withdraw(900.0); //Showing Insufficient funds because overdraftlimit = $500
}
