import 'dart:io';

void main() {
  print("Enter any number");
  int anyNumber = int.parse(stdin.readLineSync()!);
  int number = anyNumber;

  if (isPrime(number)) {
    print('$number is a prime number.');
  } else {
    print('$number is not a prime number.');
  }

  int fact = factorial(number);
  print('Factorial of $number is $fact.');
}

bool isPrime(int number) {
  if (number <= 1) return false;
  if (number == 2) return true;
  if (number % 2 == 0) return false;

  for (int i = 3; i * i <= number; i += 2) {
    if (number % i == 0) return false;
  }
  return true;
}

int factorial(int number) {
  if (number == 0 || number == 1) return 1;

  int result = 1;
  for (int i = 2; i <= number; i++) {
    result *= i;
  }
  return result;
}
