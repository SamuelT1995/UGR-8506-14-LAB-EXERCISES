import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Porsche Details'),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/Porshe.jpg',
                      width: 300,
                      height: 200,
                    ),
                    const SizedBox(height: 8.0),
                    const Text(
                      '1975 Porsche 911 Carrera',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    const Row(
                      children: [
                        Icon(Icons.thumb_up),
                        SizedBox(width: 4.0),
                        Text('0'),
                        SizedBox(width: 16.0),
                        Icon(Icons.comment),
                        SizedBox(width: 4.0),
                        Text('0'),
                        SizedBox(width: 16.0),
                        Icon(Icons.share),
                      ],
                    ),
                    SizedBox(height: 8.0),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Essential Information'),
                        Text('1 of 3 Done'),
                      ],
                    ),
                    const Divider(),
                    SizedBox(height: 8.0),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green,
                          ),
                          child: Icon(Icons.check, color: Colors.white),
                        ),
                        const SizedBox(width: 8.0),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Year: 1975', style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('Make: Porsche', style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('Model: 911 Carrera', style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('VIN: 911540029', style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 8.0),
                    const Text(
                      'Description:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8.0),
                    const Text(
                      'Photos:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
