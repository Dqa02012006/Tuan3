
import 'package:flutter/material.dart';

class PasswordFieldScreen extends StatefulWidget {
  const PasswordFieldScreen({super.key});

  @override
  State<PasswordFieldScreen> createState() =>
      _PasswordFieldScreenState();
}

class _PasswordFieldScreenState extends State<PasswordFieldScreen> {
  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PasswordField"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: TextField(
          obscureText: _isObscured,
          decoration: InputDecoration(
            labelText: "Mật khẩu",
            hintText: "Nhập mật khẩu",
            border: const OutlineInputBorder(),
            prefixIcon: const Icon(Icons.lock),

            suffixIcon: IconButton(
              icon: Icon(
                _isObscured
                    ? Icons.visibility_off
                    : Icons.visibility,
              ),
              onPressed: () {
                setState(() {
                  _isObscured = !_isObscured;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
