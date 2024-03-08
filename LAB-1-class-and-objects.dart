class Person{
  late String name;
  late int age;
  late String address;

  void eat(){
    print('Eating...');
  }

  void sleep(){
    print('Sleeping...');
  }

}


// exercise 2
class Student extends Person{
  late int rollNumber;
  late double mark3;
  late double mark1;
  late double mark2;

  void totalMark(){
    double total = mark1 + mark2 + mark3;
    print(total); 
  }

  void averageMark(){
    double average = (mark1 + mark2 + mark2)/3;
    print(average); 
  }
}
void main(){
  var person1 = Person();
  person1.name = "Samuel";
  person1.age = 20;
  person1.address = 'Piassa';
  print(person1.name);
  person1.eat();

  var student1 = Student();
  student1.name = "Samuel Tenagne.";
  student1.rollNumber = 12;
  student1.mark1 = 94;
  student1.mark2 = 82;
  student1.mark3 = 91;
  print(student1.mark1);
  student1.totalMark();
  student1.averageMark();

}