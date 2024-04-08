import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class Course {
  final int id;
  final String title;
  final String instructor;
  final double price;

  Course({required this.id, required this.title, required this.instructor, required this.price});
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Courses',

      home: CourseListScreen(),
    );
  }
}

class CourseListScreen extends StatelessWidget {
  CourseListScreen({Key? key});

  final List<Course> courses = [
    Course(id: 1, title: "programming essentials", instructor: "zeleke demisse", price: 50.00),
    Course(id: 2, title: "Premier pro masterclass", instructor: "Andrew Tate", price: 28.00),
    Course(id: 3, title: "Fundamentals of AI", instructor: "Justin Waller", price: 32.00),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List of Courses'),
      ),
      body: ListView.builder(
        itemCount: courses.length,
        itemBuilder: (context, index) {
          final course = courses[index];
          return ListTile(
            title: Text(course.title),
            subtitle: Text('Instructor: ${course.instructor}'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CourseDetailsScreen(course: course),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class CourseDetailsScreen extends StatelessWidget {
  final Course course;

  CourseDetailsScreen({required this.course});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Course Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              course.title,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text('Instructor: ${course.instructor}'),
            const SizedBox(height: 8),
            Text('Price: ${course.price.toStringAsFixed(2)} birr'),
          ],
        ),
      ),
    );
  }
}
