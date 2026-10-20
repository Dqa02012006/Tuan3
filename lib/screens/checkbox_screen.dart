
import 'package:flutter/material.dart';

class CheckboxScreen extends StatefulWidget {
  const CheckboxScreen({super.key});

  @override
  State<CheckboxScreen> createState() => _CheckboxScreenState();
}

class _CheckboxScreenState extends State<CheckboxScreen> {
  bool flutter = false;
  bool dart = false;
  bool kotlin = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Checkbox"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text(
              "Chọn ngôn ngữ yêu thích:",
              style: TextStyle(fontSize: 20),
            ),

            CheckboxListTile(
              title: const Text("Flutter"),
              value: flutter,
              onChanged: (value) {
                setState(() {
                  flutter = value ?? false;
                });
              },
            ),

            CheckboxListTile(
              title: const Text("Dart"),
              value: dart,
              onChanged: (value) {
                setState(() {
                  dart = value ?? false;
                });
              },
            ),

            CheckboxListTile(
              title: const Text("Kotlin"),
              value: kotlin,
              onChanged: (value) {
                setState(() {
                  kotlin = value ?? false;
                });
              },
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                List<String> selected = [];

                if (flutter) selected.add("Flutter");
                if (dart) selected.add("Dart");
                if (kotlin) selected.add("Kotlin");

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      selected.isEmpty
                          ? "Chưa chọn giá trị nào"
                          : "Đã chọn: ${selected.join(', ')}",
                    ),
                  ),
                );
              },
              child: const Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
