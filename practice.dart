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
    double expense = double.tryParse(input)!;
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
