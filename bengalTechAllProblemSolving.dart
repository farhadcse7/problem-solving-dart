/*
Question For Practice 3
1. Write a program in Dart to print your own name using function.
2.Write a program in Dart to print even numbers between intervals using function
3.Write a program in Dart that generates random password.
4.Write a program in Dart that find the area of a circle using function.
5.Write a program in a dart that implements the Pythagorean theorem using function.
6.Write a program in Dart to reverse a String using function.
7.Write a program in Dart to calculate power of a certain number. For e.g 5^3=125

Question For Practice 4
1.Create a list of names and print all names using list.
2.Create a set of fruits and print all fruits using loop.
3.Create a program thats reads list of expenses amount using user input and print total.
4.Create an empty list of type string called days. Use the add method to add names of 7 days
and print all days.
5.Add your 7 friend names to the list. Use where to find a name that starts with alphabet a.
6.Create a map with name, address, age, country keys and store values to it. Update country
name to other country and print all keys and values.
7.Create a map with name, phone keys and store some values to it. Use where to find all keys
that have length 4.
8.Create a simple to-do application that allows user to add, remove, and view their task.

QUESTION FOR PRACTICE 5
Dart File Handling Practice Questions
1.Write a dart program to add your name to “hello.txt” file.
2.Write a dart program to append your friends name to a file that already has your name.
3.Write a dart program to get the current working directory.
4.Write a dart program to copy the “hello.txt” file to “hello_copy.txt” file.
5.Write a dart program to create 100 files using loop.
6.Write a dart program to delete the file “hello_copy.txt”. Make sure you have created the file
“hello_copy.txt.
7.Write a dart program to store name, age, and address of students in a csv file and read it
 */

/*
Question For Practice 3
*/

//*1. Write a program in Dart to print your own name using function.*
void printMyName(){
  String name="Farhad Mia";
  print("My name is $name");
}
void main(){
  printMyName();
}

//*2.Write a program in Dart to print even numbers between intervals using function*
void printEvenNumbers(int start, int end){
  print("Even numbers between $start and $end:");
  for(int i=start;i<=end;i++){
    if(i%2==0){
      print(i);
    }
  }
}
void main(){
  int start=0;
  int end=30;
  printEvenNumbers(start, end);
}

//*3.Write a program in Dart that generates random password.*
import 'dart:math';
String generateRandomPassword(int length) {
  final random = Random();
  const chars ="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789@#\$%&";
  String password = "";
  for (int i = 0; i < length; i++) {
    int randomIndex = random.nextInt(chars.length);
    password += chars[randomIndex];
  }
  return password;
}

void main() {
  int passwordLength = 10;
  String password = generateRandomPassword(passwordLength);
  print("Randomly generated password: $password");
}

/*another way*/
import 'dart:math';
void main() {
  print(generatePassword(10));
}
String generatePassword(int length) {
  const chars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
  final random = Random.secure();
  return List.generate(length, (index) => chars[random.nextInt(chars.length)]).join();
}

//*4.Write a program in Dart that find the area of a circle using function.*
import 'dart:math';
double calculateCircleArea(double radius) {
  return pi * pow(radius, 2);
}
void main() {
  double radius = 5.0;
  double area = calculateCircleArea(radius);
  print("The area of the circle with radius $radius is $area square units.");
}
//*5.Write a program in a dart that implements the Pythagorean theorem using function.*
import 'dart:math';
double calculateHypotenuse(double a, double b) {
  return sqrt(pow(a, 2) + pow(b, 2));
}

void main() {
  double a = 3.0;
  double b = 4.0;
  double c = calculateHypotenuse(a, b);
  print("The hypotenuse of the right triangle \nwith sides a: $a and b: $b is c: $c.");
}

// *6.Write a program in Dart to reverse a String using function.*
String reverseString(String input) {
  return input.split('').reversed.join();
}
void main() {
  String str = "Hello World";
  String reversedStr = reverseString(str);
  print("Original string: $str");
  print("Reversed string: $reversedStr");
}

//another way
void main() {
  String originalString = "Hello, World!";
  String reversedString = reverseString(originalString);
  print('Original String: $originalString');
  print('Reversed String: $reversedString');
}
String reverseString(String str) {
  String reversed = '';
  for (int i = str.length - 1; i >= 0; i--) {
    reversed += str[i];
  }
  return reversed;
}

//*7.Write a program in Dart to calculate power of a certain number. For e.g 5^3=125*
import 'dart:math';
double calculatePower(double base, double exponent) {
  // return pow(base, exponent) as double;
  return pow(base, exponent).toDouble();
}
void main() {
  double base = 5.0;
  double exponent = 3.0;
  double result = calculatePower(base, exponent);
  print("$base^$exponent = $result");
}

/*
Question For Practice 4
 */

//*1.Create a list of names and print all names using list.*
void main() {
  List<String> names = ["Car", "Bike", "Honda", "Boll", "Tabel"];
  for (String name in names) {
    print(name);
  }
}

//*2.Create a set of fruits and print all fruits using loop.*
void main() {
  Set<String> fruits = {"Apple", "Banana", "Orange", "Mango", "Grapes"};
  for (String fruit in fruits) {
    print(fruit);
  }
}

//*3.Create a program thats reads list of expenses amount using user input and print total.*
import 'dart:io';
void main() {
  List<double> expenses = [];
  double total = 0.0;
  while (true) {
    stdout.write('Enter an expense amount (or "q" to quit): ');
    String input = stdin.readLineSync()!;
    if (input == 'q') {
      break;
    }
    double? expense = double.tryParse(input);
    if (expense == null) {
      print('Invalid input. Try again.');
      continue;
    }
    expenses.add(expense);
    total += expense;
  }

  print('Expenses: $expenses');
  print('Total: $total');
}

//another way
import 'dart:io';
void main() {
  List<double> expenses = [];
  double total = 0.0;
  print('Enter the expenses amount (press enter to stop):');
  while (true) {
    String input = stdin.readLineSync()!;
    if (input.isEmpty) break;
    expenses.add(double.parse(input));
  }
  print("List of expenses: $expenses");
  total = expenses.fold(0, (prev, amount) => prev + amount);
  //   for (double expense in expenses) {total += expense;}
  print('Total expenses: \$$total');
}

/*4.Create an empty list of type string called days. Use the add method to add names of 7 days
and print all days. */
void main() {
  List<String> days = [];
  days.add("Monday");
  days.add("Tuesday");
  days.add("Wednesday");
  days.add("Thursday");
  days.add("Friday");
  days.add("Saturday");
  days.add("Sunday");
  for (String day in days) {
    print(day);
  }
}

//*5.Add your 7 friend names to the list. Use where to find a name that starts with alphabet a.*
void main() {
  List<String> friends = [];
  friends.add('Mottakin');
  friends.add('Ifte');
  friends.add('Jasim');
  friends.add('azhar');
  friends.add('Limon');
  friends.add('Alia');
  friends.add('Hia');
  List<String> startWithA = friends.where((element) => element.startsWith("a")).toList();
  //  List<String> startWithA = friends.where((element) => element.startsWith("a")||element.startsWith("A")).toList();
  print(startWithA);
}

/*6.Create a map with name, address, age, country keys and store values to it. Update country
name to other country and print all keys and values. */
void main() {
  Map<String, dynamic> person = {
    'name': 'John Doe',
    'address': '123 Main St',
    'age': 30,
    'country': 'USA'
  };
  person['country'] = 'Canada';
  person.forEach((key, value) {
    print('$key: $value');
  });
}

/*7.Create a map with name, phone keys and store some values to it. Use where to find all keys
that have length 4.*/

void main() {
  Map<String, String> contacts = {
    'Alice': '1234',
    'Bob': '5678',
    'Ifte': '9012',
    'Raju': '3456'
  };
  Iterable<String> keysLength = contacts.keys.where((key) => key.length == 4);
  print(keysLength);
}

//another way
void main() {
  Map<String, String> contactMap = {
    'Alice': '1234',
    'Bob': '5678',
    'Ifte': '9012',
    'Raju': '3456'
  };
  List<String> keysWithLength4 = [];
  for (var key in contactMap.keys) {
    if (key.length == 4) {
      keysWithLength4.add(key);
    }
  }
  print("Contact map: $contactMap");
  print("Keys with length 4: $keysWithLength4");
}

//8.Create a simple to-do application that allows user to add, remove, and view their task.
import 'dart:io';
void main() {
  var tasks = [];
  while (true) {
    print('Enter a command (add/remove/view/exit):');
    var command = stdin.readLineSync();
    if (command == 'add') {
      print('Enter a task:');
      var task = stdin.readLineSync()!;
      tasks.add(task);
    } else if (command == 'remove') {
      print('Enter the index of the task to remove:');
      var index = int.parse(stdin.readLineSync()!);
      tasks.removeAt(index);
    } else if (command == 'view') {
      for (var i = 0; i < tasks.length; i++) {
        print('$i: ${tasks[i]}');
      }
    } else if (command == 'exit') {
      break;
    } else {
      print('Invalid command.');
    }
  }
}

//another way will add later *****

/*
QUESTION FOR PRACTICE 5
Dart File Handling Practice Questions
 */

//*1.Write a dart program to add your name to “hello.txt” file.*
import 'dart:io';
void main() {
  File file = File("hello.txt");
  String myName="Farhad Mia";
  file.writeAsStringSync(myName);
  print("Your name: '$myName' added to the file. \nThanks.");
}

//another way
import 'dart:io';
void main() {
  final name = "Farhad Mia";
  final fileName = "ok.txt";
  try {
    final file = File(fileName);
    if (!file.existsSync()) {
      file.createSync();
    }
    file.writeAsStringSync("$name \n", mode: FileMode.append);
    print("Your Name: '$name' added to $fileName file.");
  } catch (e) {
    print("An error occurred: $e");
  }
}

//*2.Write a dart program to append your friends name to a file that already has your name.*
import 'dart:io';
void main() {
  var file = File('just.txt');
  String friendName="Mottakin Mia";
  file.writeAsStringSync("$friendName\n", mode: FileMode.append);
  print('Friend name: "$friendName" added to the file. Thanks.');
}

//another way
import 'dart:io';
void main() {
  final yourName = "Farhad Mia";
  final friendName = "Mottakin Mia";
  final fileName = "names.txt";
  try {
    final file = File(fileName);
    if (!file.existsSync()) {
      file.createSync();
      print("$fileName created.");
    }
    file.writeAsStringSync("$yourName\n$friendName\n", mode: FileMode.append);
    print("Friend's name added to $fileName.");
  } catch (e) {
    print("An error occurred: $e");
  }
}

//*3.Write a dart program to get the current working directory.*
import 'dart:io';
void main() {
  var directory = Directory.current;
  print("Directory: ${directory.path}");
  // File file = File("name.txt");
  // print(file.absolute);
}

//*4.Write a dart program to copy the “hello.txt” file to “hello_copy.txt” file.*
import 'dart:io';
void main() {
  var file = File('hello.txt');
  var copy = File('hello_copy.txt');
  file.copySync(copy.path);
  print("file copied successfully");
}

//another way
import 'dart:io';
void main() {
  var file = File('hello.txt');
  var copy = File('hello_copy.txt');
  if (file.existsSync()) {
    file.copySync(copy.path);
    print("File copied Successfully");
  } else {
    file.createSync();
    file.writeAsStringSync('Hi, New file created');
    file.copySync(copy.path);
    print("File created and than copied Successfully");
  }
}

//another way
import 'dart:io';
void main() {
  var file = File('hello.txt');
  var copy = File('hello_copy.txt');
  if (file.existsSync()) {
    file.copySync(copy.path);
    print("File copied Successfully");
  } else {
    print("Source File not found. Please first create main file.");
  }
}

//*5.Write a dart program to create 100 files using loop.*
import 'dart:io';
void main() {
  for (var i = 0; i < 100; i++) {
    var file = File('file_$i.txt');
    file.createSync();
  }
  print("File Created Successfully");
}

/*6.Write a dart program to delete the file “hello_copy.txt”. Make sure you have created the file
“hello_copy.txt.*/
import 'dart:io';
void main() {
  // Create Object file
  File file = File("hello_copy.txt");
  if (file.existsSync()) {
    file.deleteSync();
    print("File is deleted");
  } else {
    print("File does not exist");
  }
}

//*7.Write a dart program to store name, age, and address of students in a csv file and read it.*
import 'dart:io';
void main() {
  var file = File('students.csv');
  file.writeAsStringSync('Name,Age,Address\n');
  file.writeAsStringSync('Alice,20,123 Main St\n', mode: FileMode.append);
  file.writeAsStringSync('Bob,21,456 Oak Ave\n', mode: FileMode.append);
  var lines = file.readAsStringSync();
  print(lines);
}

//another way
import 'dart:io';
void main() {
  var file = File('students.csv');
  file.writeAsStringSync('Name,Age,Address\n');
  while (true) {
    print('Enter a student (name,age,address) or "exit":');
    var input = stdin.readLineSync();
    if (input == 'exit') {
      break;
    }
    file.writeAsStringSync('$input\n', mode: FileMode.append);
  }
  var lines = file.readAsStringSync();
  print(lines);
}

// another way
import 'dart:io';
void main() {
  // open file
  File file = File("students.csv");
  // write to file
  file.writeAsStringSync('Name,Age,Address\n');
  for (int i = 0; i < 2; i++) {
    // user input student name
    stdout.write("Enter Name of student ${i + 1}: ");
    String? name = stdin.readLineSync();
    // user input age
    stdout.write("Enter Age of student ${i + 1}: ");
    String? age = stdin.readLineSync();
    // user input address
    stdout.write("Enter Address of student ${i + 1}: ");
    String? address = stdin.readLineSync();

    file.writeAsStringSync('$name,$age,$address\n', mode: FileMode.append);
  }
  var readOutput = file.readAsStringSync();
  print("The Data of the files are: \n$readOutput");
}

//