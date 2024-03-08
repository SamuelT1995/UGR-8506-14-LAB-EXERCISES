void main() {
  // Exercise 1:
  int sum(int num1, int num2) {
    return num1 + num2;
  }

  int result = sum(5, 3);
  print("Exercise 1: Sum of 5 and 3 is $result");

  // Exercise 2:
  bool isPrime(int number) {
    if (number <= 1) {
      return false;
    }
    for (int i = 2; i <= number / 2; i++) {
      if (number % i == 0) {
        return false;
      }
    }
    return true;
  }

  print("Exercise 2: Prime numbers between 1 and 20:");
  for (int i = 1; i <= 20; i++) {
    if (isPrime(i)) {
      print(i);
    }
  }

  // Exercise 3:
  String reverseString(String input) {
    String reversed = '';
    for (int i = input.length - 1; i >= 0; i--) {
      reversed += input[i];
    }
    return reversed;
  }

  print("Exercise 3: Reversed string of 'hello': ${reverseString('hello')}");
}
