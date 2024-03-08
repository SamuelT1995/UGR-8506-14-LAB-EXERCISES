//excercise 1
void checkEvenOrOdd(int number) {
  if (number % 2 == 0) {
    print("$number is even.");
  } else {
    print("$number is odd.");
  }
  void main() {
  int givenNumber = 7;
  checkEvenOrOdd(givenNumber);
}

//excercise 2
void printFirst10NaturalNumbers() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}

  printFirst10NaturalNumbers();
  
  //excercise 3
  void calculator(String operation, double num1, double num2) {
  switch (operation) {
    case '+':
      print("$num1 + $num2 = ${num1 + num2}");
      break;
    case '-':
      print("$num1 - $num2 = ${num1 - num2}");
      break;
    case '*':
      print("$num1 * $num2 = ${num1 * num2}");
      break;
    case '/':
      if (num2 != 0) {
        print("$num1 / $num2 = ${num1 / num2}");
      } else {
        print("Cannot divide by zero.");
      }
      break;
    default:
      print("Invalid operation.");
  }
}

  calculator('+', 5, 3);
  calculator('-', 10, 7);
  calculator('*', 4, 6);
  calculator('/', 8, 2);
  calculator('/', 6, 0);

  //excercise 4
  void gradeToLetterGrade(String grade) {
  switch (grade) {
    case 'A':
      print("Excellent!");
      break;
    case 'B':
      print("Good!");
      break;
    case 'C':
      print("Fair!");
      break;
    case 'D':
      print("Needs Improvement!");
      break;
    case 'F':
      print("Failed!");
      break;
    default:
      print("Invalid grade.");
  }
};
  gradeToLetterGrade('A');
  gradeToLetterGrade('B');
  gradeToLetterGrade('C');
  gradeToLetterGrade('D');
  gradeToLetterGrade('F');
  gradeToLetterGrade('X');

}





