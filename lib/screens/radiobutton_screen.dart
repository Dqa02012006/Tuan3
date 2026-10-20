
import 'package:flutter/material.dart';

class RadioButtonScreen extends StatefulWidget {
  const RadioButtonScreen({super.key});

  @override
  State<RadioButtonScreen> createState() =>
      _RadioButtonScreenState();
}

class _RadioButtonScreenState extends State<RadioButtonScreen> {
  String selected = "Flutter";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RadioButton"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text(
              "Chọn một công nghệ yêu thích:",
              style: TextStyle(fontSize: 20),
            ),

            RadioGroup<String>(
              groupValue: selected,
              onChanged: (value) {
                setState(() {
                  selected = value!;
                });
              },
              child: Column(
                children: [
                  RadioListTile<String>(
                    title: const Text("Flutter"),
                    value: "Flutter",
                  ),

                  RadioListTile<String>(
                    title: const Text("Dart"),
                    value: "Dart",
                  ),

                  RadioListTile<String>(
                    title: const Text("Kotlin"),
                    value: "Kotlin",
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            Text(
              "Bạn đã chọn: $selected",
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
