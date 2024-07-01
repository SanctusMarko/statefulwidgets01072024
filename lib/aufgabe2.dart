import 'package:flutter/material.dart';
import 'aufgabe1.dart'; // Import the widgets.dart file

class Aufgabe2Screen extends StatelessWidget {
  const Aufgabe2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: "SizedBox Exercise"),
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBoxExercise(),
      ),
    );
  }
}

class SizedBoxExercise extends StatelessWidget {
  const SizedBoxExercise({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 160,
          height: 160,
          child: Container(
            color: Colors.blue,
            child: const Center(
              child: Text(
                "Box 1",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          width: 200,
          height: 100,
          child: Container(
            color: Colors.green,
            child: const Center(
              child: Text(
                "Box 2",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          width: 100,
          height: 200,
          child: Container(
            color: Colors.red,
            child: const Center(
              child: Text(
                "Box 3",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
