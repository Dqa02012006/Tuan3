
import 'package:flutter/material.dart';

class PickerScreen extends StatefulWidget {
  const PickerScreen({super.key});

  @override
  State<PickerScreen> createState() => _PickerScreenState();
}

class _PickerScreenState extends State<PickerScreen> {
  String selected = "Flutter";

  final List<String> options = [
    "Flutter",
    "Dart",
    "Kotlin",
    "Java",
    "Python",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Picker"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text(
              "Chọn ngôn ngữ lập trình:",
              style: TextStyle(fontSize: 20),
            ),

            const SizedBox(height: 20),

            DropdownButtonFormField<String>(
              initialValue: selected,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Ngôn ngữ",
              ),
              items: options.map((item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selected = value!;
                });
              },
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
