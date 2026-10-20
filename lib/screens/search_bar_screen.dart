
import 'package:flutter/material.dart';

class SearchBarScreen extends StatefulWidget {
  const SearchBarScreen({super.key});

  @override
  State<SearchBarScreen> createState() => _SearchBarScreenState();
}

class _SearchBarScreenState extends State<SearchBarScreen> {
  final SearchController controller = SearchController();

  final List<String> items = [
    "Flutter",
    "Dart",
    "Kotlin",
    "Java",
    "Python",
  ];

  String keyword = "";

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final results = items.where((item) {
      return item.toLowerCase().contains(keyword.toLowerCase());
    }).toList();

    return Scaffold(
      appBar: AppBar(title: const Text("SearchBar")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            SearchBar(
              controller: controller,
              hintText: "Tìm ngôn ngữ...",
              leading: const Icon(Icons.search),
              trailing: [
                IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () {
                    controller.clear();
                    setState(() {
                      keyword = "";
                    });
                  },
                ),
              ],
              onChanged: (value) {
                setState(() {
                  keyword = value;
                });
              },
            ),

            const SizedBox(height: 20),

            Expanded(
              child: ListView(
                children: results.map((item) {
                  return ListTile(
                    leading: const Icon(Icons.code),
                    title: Text(item),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
