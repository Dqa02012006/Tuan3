
import 'package:flutter/material.dart';

class SpacerScreen extends StatelessWidget {
  const SpacerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Spacer")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              height: 60,
              color: Colors.red,
              alignment: Alignment.center,
              child: const Text("Top"),
            ),

            const Spacer(),

            Container(
              height: 60,
              color: Colors.blue,
              alignment: Alignment.center,
              child: const Text(
                "Bottom",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
