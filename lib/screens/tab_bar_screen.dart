
import 'package:flutter/material.dart';

class TabBarScreen extends StatelessWidget {
  const TabBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("TabBar"),
          bottom: const TabBar(
            tabs: [
              Tab(text: "Home", icon: Icon(Icons.home)),
              Tab(text: "Search", icon: Icon(Icons.search)),
              Tab(text: "Profile", icon: Icon(Icons.person)),
            ],
          ),
        ),

        body: const TabBarView(
          children: [
            Center(child: Text("Home Screen")),
            Center(child: Text("Search Screen")),
            Center(child: Text("Profile Screen")),
          ],
        ),
      ),
    );
  }
}
