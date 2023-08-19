// // import 'dart:io';

// // void main() {
// //   List<double> expenses = [];
// //   double total = 0.0;

// //   while (true) {
// //     stdout.write('Enter an expense amount (or "q" to quit): ');
// //     String input = stdin.readLineSync()!;
// //     if (input == 'q') {
// //       break;
// //     }
// //     double expense = double.tryParse(input)!;
// //     if (expense == null) {
// //       print('Invalid input. Try again.');
// //       continue;
// //     }
// //     expenses.add(expense);
// //     total += expense;
// //   }

// //   print('Expenses: $expenses');
// //   print('Total: $total');
// // }



// class Person {
//   String name;
//   int age;
//   String address;

// // Constructor takes name, age, and address
//   Person(this.name, this.age, this.address);

//   // Method print my name
//   void sayHello() {
//     print("Hello, my name is $name.");
//   }

//   //Method return age in months
//   int getAgeInMonths() {
//     return age * 12;
//   }

// }

// //Main function
// void main() {
//   String name = "Ostad"; // assign your name
//   int age = 25; //assign your age
//   String address = "Baridhara, Dhaka"; //assign any address
//   Person person = Person(name, age, address);
//   person.sayHello();
//   int ageInMonths = person.getAgeInMonths();
//   print("Age in months:$ageInMonths");
// }

class Car {
  String brand;
  String model;
  int year;
  double milesDriven ;
  static int numberOfCars = 0;

  Car(this.brand, this.model, this.year, this.milesDriven) {
    numberOfCars++;
  }

  void drive(double miles) {
    milesDriven += miles;
  }

  double getMilesDriven() {
    return milesDriven;
  }
  String getBrand() {
    return brand;
  }
  String getModel() {
    return model;
  }

  int getYear() {
    return year;
  }

  int getAge() {
    return DateTime.now().year -year;

  }

  }

void main() {
 Car car1 = Car('Toyota','X-corolla',2020,8000);
 Car car2 = Car('Honda','Civic', 2015,15000);
 Car car3 = Car('Ford','F-150', 2018,10000);

 car1.drive(1000);
 car2.drive(1500);
 car3.drive(1200);

 print('${car1.getBrand()}, ${car1.getModel()},${car1.getYear()},Miles:${car1.getMilesDriven()},Age: ${car1.getAge()}');
 print('${car2.getBrand()}, ${car2.getModel()},${car2.getYear()},Miles:${car2.getMilesDriven()},Age: ${car2.getAge()}');
 print('${car3.getBrand()}, ${car3.getModel()},${car3.getYear()},Miles:${car3.getMilesDriven()},Age: ${car3.getAge()}');
}