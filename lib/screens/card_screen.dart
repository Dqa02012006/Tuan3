
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card"),
      ),

      body: Center(
        child: Card(
          elevation: 5,
          margin: const EdgeInsets.all(20),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.school,
                  size: 50,
                  color: Colors.blue,
                ),

                const SizedBox(height: 10),

                const Text(
                  "University of Transport",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  "Welcome to Flutter UI Components",
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 15),

                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Button clicked!"),
                      ),
                    );
                  },
                  child: const Text("View Details"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
