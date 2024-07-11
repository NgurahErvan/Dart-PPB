// Kalkulator
double add(double x, double y) {
  return x + y;
}
double subtract(double x, double y) {
  return x - y;
}
double multiply(double x, double y) {
  return x * y;
}
double divide(double x, double y) {
  if (y == 0) {
    throw Exception("Error! Division by zero.");
  } else {
    return x / y;
  }
}

void main() {
  print("Select operation:");
  print("1. Add");
  print("2. Subtract");
  print("3. Multiply");
  print("4. Divide");

  while (true) {
    print("Enter choice(1/2/3/4): ");
    String? choice = stdin.readLineSync();

    if (choice != null && ['1', '2', '3', '4'].contains(choice)) {
      print("Enter first number: ");
      double? num1 = double.tryParse(stdin.readLineSync() ?? '');
      print("Enter second number: ");
      double? num2 = double.tryParse(stdin.readLineSync() ?? '');

      if (num1 != null && num2 != null) {
        switch (choice) {
          case '1':
            print("$num1 + $num2 = ${add(num1, num2)}");
            break;
          case '2':
            print("$num1 - $num2 = ${subtract(num1, num2)}");
            break;
          case '3':
            print("$num1 * $num2 = ${multiply(num1, num2)}");
            break;
          case '4':
            try {
              print("$num1 / $num2 = ${divide(num1, num2)}");
            } catch (e) {
              print(e);
            }
            break;
        }
      } else {
        print("Invalid Input");
      }
    } else {
      print("Invalid Input");
    }
  }
}