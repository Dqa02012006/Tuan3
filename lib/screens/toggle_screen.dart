
import 'package:flutter/material.dart';

class ToggleButtonScreen extends StatefulWidget {
  const ToggleButtonScreen({super.key});

  @override
  State<ToggleButtonScreen> createState() =>
      _ToggleButtonScreenState();
}

class _ToggleButtonScreenState extends State<ToggleButtonScreen> {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Toggle Button"),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              isOn ? "Trạng thái: ON" : "Trạng thái: OFF",
              style: const TextStyle(fontSize: 24),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  isOn = !isOn;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    isOn ? Colors.green : Colors.grey,
                foregroundColor: Colors.white,
              ),
              child: Text(isOn ? "ON" : "OFF"),
            ),
          ],
        ),
      ),
    );
  }
}
