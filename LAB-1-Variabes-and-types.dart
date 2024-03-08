//excercise 1
import 'dart:io';

void main() {
  String name = "John";
  int age = 30;
  String favoriteColor = "blue";
  print("My name is $name.");
  print("I am $age years old.");
  print("My favorite color is $favoriteColor.");

//excercise 2
  
  const speedOfLight = 299792458;

  print('Enter the distance in meters for light to travel:');
  var input = stdin.readLineSync();
  var distance = double.parse(input!);

  var timeInSeconds = distance / speedOfLight;
  print('Time taken for light to travel $distance meters: $timeInSeconds seconds');
}




