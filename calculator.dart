import 'dart:io';

void main() {
  print('Enter the first number:');
  var num1 = stdin.readLineSync();

  print('Enter the second number:');
  var num2 = stdin.readLineSync();

  double firstNumber = double.parse(num1!);
  double secondNumber = double.parse(num2!);

  print('Select operation: \\n1. Add\\n2. Subtract\\n3. Multiply\\n4. Divide');
  var operation = stdin.readLineSync();
  int selectedOperation = int.parse(operation!);

  double result;
  switch (selectedOperation) {
    case 1:
      result = firstNumber + secondNumber;
      break;
    case 2:
      result = firstNumber - secondNumber;
      break;
    case 3:
      result = firstNumber * secondNumber;
      break;
    case 4:
      if (secondNumber == 0) {
        print('Error: Division by zero is not allowed.');
        return;
      }
      result = firstNumber / secondNumber;
      break;
    default:
      print('Invalid operation selected.');
      return;
  }

  print('Result: $result');
}