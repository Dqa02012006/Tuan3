
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Menu"),
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Bạn chọn: $value")),
              );
            },
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: "Settings",
                child: Text("Settings"),
              ),
              const PopupMenuItem(
                value: "Profile",
                child: Text("Profile"),
              ),
              const PopupMenuItem(
                value: "Logout",
                child: Text("Logout"),
              ),
            ],
          ),
        ],
      ),

      body: const Center(
        child: Text(
          "Nhấn dấu ba chấm ở góc trên bên phải",
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
