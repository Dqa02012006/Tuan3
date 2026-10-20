
import 'package:flutter/material.dart';

class DividerScreen extends StatelessWidget {
  const DividerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Divider"),
      ),

      body: const Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
            ),

            Divider(
              color: Colors.grey,
              thickness: 1,
            ),

            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),

            Divider(
              color: Colors.grey,
              thickness: 1,
            ),

            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
            ),
          ],
        ),
      ),
    );
  }
}