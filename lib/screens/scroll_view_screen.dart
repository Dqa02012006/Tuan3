
import 'package:flutter/material.dart';

class ScrollViewScreen extends StatelessWidget {
  const ScrollViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ScrollView")),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(20, (index) {
            return Container(
              height: 80,
              margin: const EdgeInsets.all(8),
              color: Colors.lightBlue[100],
              alignment: Alignment.center,
              child: Text(
                "Item ${index + 1}",
                style: const TextStyle(fontSize: 20),
              ),
            );
          }),
        ),
      ),
    );
  }
}
