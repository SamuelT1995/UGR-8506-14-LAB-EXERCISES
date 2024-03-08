import 'dart:async';
import 'dart:math';

// Exercise 1
Future<String> fetchQuote() async {
  await Future.delayed(Duration(seconds: 2));
  List<String> quotes = [
    "The only way to do great work is to love what you do. - Steve Jobs",
    "In the end, it's not the years in your life that count. It's the life in your years. - Abraham Lincoln",
    "Believe you can and you're halfway there. - Theodore Roosevelt"
  ];
  return quotes[Random().nextInt(quotes.length)];
}

// Exercise 2
Future<String> downloadFile() async {
  await Future.delayed(Duration(seconds: 2));
  return "File downloaded successfully.";
}

// Exercise 3
Future<List<String>> loadDataFromDatabase() async {
  await Future.delayed(Duration(seconds: 2));
  return ["Data1", "Data2", "Data3"];
}

// Exercise 4
Future<String> fetchWeatherData() async {
  await Future.delayed(Duration(seconds: 2));
  // Simulated weather data
  return "Temperature: 25°C, Condition: Sunny";
}

void main() async {
  // Exercise 1
  print("Exercise 1:");
  print(await fetchQuote());

  // Exercise 2
  print("\nExercise 2:");
  print(await downloadFile());

  // Exercise 3
  print("\nExercise 3:");
  print(await loadDataFromDatabase());

  // Exercise 4
  print("\nExercise 4:");
  print(await fetchWeatherData());
}
