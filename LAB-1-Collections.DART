void main() {


  // Exercise 1
  List<String> hobbies = ["Reading", "Gardening", "Cooking"];
  print("Exercise 1:");
  print("List of Hobbies: $hobbies");
  
  hobbies.add("Painting");
  print("After adding 'Painting': $hobbies");
  
  hobbies.remove("Gardening");
  print("After removing 'Gardening': $hobbies");
  
  hobbies.sort();
  print("Sorted List of Hobbies: $hobbies");
  
  print("Is the list empty? ${hobbies.isEmpty}");
  


  // Exercise 2
  List<int> numbers = [1, 3, 2, 1, 4, 3, 5, 4];
  print("\nExercise 2:");
  print("Original List of Numbers: $numbers");
  
  Set<int> uniqueNumbers = numbers.toSet();
  print("Unique Numbers: $uniqueNumbers");
  


  // Exercise 3
  Map<String, int> studentMarks = {
    "Alice": 85,
    "Bob": 90,
    "Carol": 75
  };
  print("\nExercise 3:");
  print("Student Marks: $studentMarks");
  
  studentMarks.putIfAbsent("David", () => 80);
  print("After adding 'David': $studentMarks");
  
  studentMarks.forEach((name, mark) => print("$name: $mark"));
  
  print("Does 'Alice' exist? ${studentMarks.containsKey("Alice")}");
  


  // Exercise 4
  class Product {
    String name;
    double price;
    int quantity;
    
    Product(this.name, this.price, this.quantity);
  }
  
  List<Product> cart = [];
  cart.add(Product("Laptop", 1000, 1));
  cart.add(Product("Mouse", 20, 2));
  cart.add(Product("Keyboard", 50, 1));
  
  double totalPrice = cart.fold(0, (prev, product) => prev + (product.price * product.quantity));
  print("\nExercise 4:");
  print("Total Price: \$$totalPrice");
  

  
  // Exercise 5
  class Student {
    String name;
    List<int> marks;
    
    Student(this.name, this.marks);
    
    double calculateAverageMark() {
      return marks.reduce((sum, mark) => sum + mark) / marks.length;
    }
  }
  
  Student alice = Student("Alice", [85, 90, 95]);
  print("\nExercise 5:");
  print("${alice.name}'s Average Mark: ${alice.calculateAverageMark()}");
}
