import 'package:flutter/material.dart';
import 'aufgabe1.dart'; // Import the widgets.dart file

class Aufgabe3Screen extends StatelessWidget {
  const Aufgabe3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: "ListView Exercise"),
      backgroundColor: Colors.white,
      body: ListViewExercise(),
    );
  }
}

class ListViewExercise extends StatelessWidget {
  const ListViewExercise({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ListItem(title: "Product 1", price: "€10"),
        ListItem(title: "Product 2", price: "€20"),
        ListItem(title: "Product 3", price: "€30"),
        ListItem(title: "Product 4", price: "€40"),
        ListItem(title: "Product 5", price: "€50"),
      ],
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final String price;

  const ListItem({super.key, required this.title, required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        children: [
          const Icon(Icons.shopping_cart),
          const SizedBox(width: 16),
          Expanded(child: Text(title)),
          Text(price),
        ],
      ),
    );
  }
}
