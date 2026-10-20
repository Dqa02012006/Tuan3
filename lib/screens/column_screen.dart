
import 'package:flutter/material.dart';

class ColumnScreen extends StatelessWidget {
  const ColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Column")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(width: 100, height: 60, color: Colors.red),
            const SizedBox(height: 10),
            Container(width: 100, height: 60, color: Colors.green),
            const SizedBox(height: 10),
            Container(width: 100, height: 60, color: Colors.blue),
          ],
        ),
      ),
    );
  }
}
