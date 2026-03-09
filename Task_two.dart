// Task 2: Async Calculator App
// Name: Habteweld Mazengia    ID: ATE/5127/15

import 'dart:async';

class Calculator {
  final String name;

  Calculator(this.name);

  // Synchronous methods
  double add(double a, double b) {
    return a + b;
  }

  double subtract(double a, double b) {
    return a - b;
  }

  double multiply(double a, double b) {
    return a * b;
  }

  double divide(double a, double b) {
    if (b == 0) {
      throw ArgumentError('Cannot divide by zero.');
    }
    return a / b;
  }

  // Async computation
  Future<double> computeAsync(double a, double b, String op) async {
    double answer;

    switch (op) {
      case 'add':
        answer = add(a, b);
        break;

      case 'subtract':
        answer = subtract(a, b);
        break;

      case 'multiply':
        answer = multiply(a, b);
        break;

      case 'divide':
        answer = divide(a, b);
        break;

      default:
        throw ArgumentError('Unknown operation: $op');
    }

    await Future.delayed(Duration(seconds: 1, milliseconds: 500));

    return answer;
  }

  // outputing the result on compiler
  Future<void> displayResult(double a, double b, String op) async {
    try {
      double result = await computeAsync(a, b, op);
      print('$op($a, $b) = $result');
    } catch (e) {
      print('Error: $e');
    }
  }
}

Future<void> main() async {
  final calc = Calculator('MyCalculator');

  print('--- ${calc.name} ---');

  await calc.displayResult(10, 4, 'add');
  await calc.displayResult(10, 4, 'subtract');
  await calc.displayResult(10, 4, 'multiply');
  await calc.displayResult(10, 4, 'divide');
  await calc.displayResult(15, 3, 'divide');

  // Testing division by zero
  await calc.displayResult(10, 0, 'divide');

  print('All calculations complete.');
}
