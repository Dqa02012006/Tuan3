
import 'package:flutter/material.dart';

class NavigationViewScreen extends StatelessWidget {
  const NavigationViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("NavigationView"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          "This is NavigationView",
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
