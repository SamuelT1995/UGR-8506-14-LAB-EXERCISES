import 'package:flutter/material.dart';

class WidgetExercise3 extends StatelessWidget {
  const WidgetExercise3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('BMI CALCULATOR')),
        backgroundColor: Colors.pink,
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Container(
                    color: Colors.deepPurple,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.male),
                        Text('MALE'),
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                Expanded(
                  child: Container(
                    color: Colors.deepPurple,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.female),
                        Text('FEMALE'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Container(
                    color: Colors.deepPurple,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Height'),
                        Text(
                          '176cm',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        Slider(
                          value: 0.5,
                          min: 0,
                          max: 1,
                          onChanged: null,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20), 
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Container(
                    color: Colors.deepPurple,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Weight'),
                        Text('60'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.add),
                            Icon(Icons.remove),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                Expanded(
                  child: Container(
                    color: Colors.deepPurple,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Weight'),
                        Text('60'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.add),
                            Icon(Icons.remove),
                          ],
                        ),

Oliyad, [4/2/2024 4:20 PM]
],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          color: Colors.pink,
          height: 50, // Adjust as needed
          child: const Center(
            child: Text(
              'CALCULATE',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}