
import 'package:flutter/material.dart';

class ChipsScreen extends StatefulWidget {
  const ChipsScreen({super.key});

  @override
  State<ChipsScreen> createState() => _ChipsScreenState();
}

class _ChipsScreenState extends State<ChipsScreen> {
  final List<String> categories = [
    "Kinh dị",
    "Hành động",
    "Hài",
    "Tình cảm",
  ];

  final Set<String> selected = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Chips")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Chọn thể loại phim:",
              style: TextStyle(fontSize: 20),
            ),

            const SizedBox(height: 15),

            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: categories.map((category) {
                return FilterChip(
                  label: Text(category),
                  selected: selected.contains(category),
                  onSelected: (value) {
                    setState(() {
                      if (value) {
                        selected.add(category);
                      } else {
                        selected.remove(category);
                      }
                    });
                  },
                );
              }).toList(),
            ),

            const SizedBox(height: 20),

            Text(
              selected.isEmpty
                  ? "Chưa chọn thể loại"
                  : "Đã chọn: ${selected.join(', ')}",
            ),
          ],
        ),
      ),
    );
  }
}
