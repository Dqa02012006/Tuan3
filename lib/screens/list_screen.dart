
import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> items = [
      "Flutter",
      "Dart",
      "Kotlin",
      "Java",
      "Python",
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("List"),
      ),

      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.code),
            title: Text(items[index]),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("Bạn chọn: ${items[index]}"),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
