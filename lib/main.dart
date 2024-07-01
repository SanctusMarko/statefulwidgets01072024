import 'package:flutter/material.dart';
import 'aufgabe1.dart'; // Import the widgets.dart file
import 'aufgabe2.dart'; // Import the aufgabe2.dart file
import 'aufgabe3.dart'; // Import the aufgabe3.dart file

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeScreen(),
      routes: {
        "/task1": (context) => const Task1Screen(),
        "/task2": (context) => const Aufgabe2Screen(),
        "/task3": (context) => const Aufgabe3Screen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Home Screen"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/task1");
              },
              child: const Text("Aufgabe 1"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/task2");
              },
              child: const Text("Aufgabe 2"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/task3");
              },
              child: const Text("Aufgabe 3"),
            ),
          ],
        ),
      ),
    );
  }
}

class Task1Screen extends StatelessWidget {
  const Task1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: "Column and Row Example"),
      backgroundColor: Colors.white, // Scaffold background color
      body: Center(
        child: ColumnAndRowExample(),
      ),
    );
  }
}
