import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;
  final String title;

  const CustomAppBar({super.key, required this.title})
      : preferredSize = const Size.fromHeight(kToolbarHeight + 20);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              height: kToolbarHeight,
              color: Colors.blue[700], // Dark blue color
            ),
            Container(
              height: 50, // Lighter blue
              color: Colors.blue,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(
              left: 16.0, top: kToolbarHeight / 2), // Padding from the edge
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              title,
              style: const TextStyle(
                  color: Colors.white, fontSize: 20), // Increase font size
            ),
          ),
        ),
      ],
    );
  }
}

class ColumnAndRowExample extends StatelessWidget {
  const ColumnAndRowExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("A", style: TextStyle(color: Colors.black)), // A text color
            Text("B", style: TextStyle(color: Colors.black)), // B text color
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("C", style: TextStyle(color: Colors.black)), // C text color
            Text("D", style: TextStyle(color: Colors.black)), // D text color
          ],
        ),
        Text("E", style: TextStyle(color: Colors.black)), // E text color
      ],
    );
  }
}
