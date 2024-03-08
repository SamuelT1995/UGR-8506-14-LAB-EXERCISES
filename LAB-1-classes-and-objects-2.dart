// Exercise 1
class Rectangle {
  double width;
  double height;

  Rectangle(this.width, this.height);

  double calculateArea() {
    return width * height;
  }

  double calculatePerimeter() {
    return 2 * (width + height);
  }
}

// Exercise 2
class Product {
  String name;
  double price;
  int quantity;

  Product(this.name, this.price, this.quantity);

  double getTotalCost() {
    return price * quantity;
  }
}

// Exercise 3
abstract class Shape {
  double calculateArea();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return 3.14 * radius * radius;
  }
}

class Square extends Shape {
  double side;

  Square(this.side);

  @override
  double calculateArea() {
    return side * side;
  }
}

void main() {
  var rectangle = Rectangle(5, 10);
  print("Exercise 1:");
  print("Area of Rectangle: ${rectangle.calculateArea()}");
  print("Perimeter of Rectangle: ${rectangle.calculatePerimeter()}");

  var product = Product("Apple", 1.5, 10);
  print("\nExercise 2:");
  print("Total cost of ${product.quantity} ${product.name}s: \$${product.getTotalCost()}");

  var circle = Circle(5);
  var square = Square(4);

  print("\nExercise 3:");
  print("Area of Circle: ${circle.calculateArea()}");
  print("Area of Square: ${square.calculateArea()}");
}
