
import 'package:flutter/material.dart';

class TextDetailScreen extends StatelessWidget {
  const TextDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Detail'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue[100],
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: RichText(
            text: const TextSpan(
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
                height: 1.8,
              ),
              children: [
                TextSpan(text: 'The '),

                TextSpan(
                  text: 'quick',
                  style: TextStyle(
                    decoration: TextDecoration.lineThrough,
                  ),
                ),

                TextSpan(
                  text: ' Brown',
                  style: TextStyle(
                    color: Colors.brown,
                    fontSize: 32,
                  ),
                ),

                TextSpan(text: '\nfox j u m p s '),

                TextSpan(
                  text: 'over',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),

                TextSpan(text: '\n'),

                TextSpan(
                  text: 'the',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                ),

                TextSpan(text: ' lazy dog.'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
