import 'package:flutter/material.dart';

class MyWidgetToAnimate3 extends StatelessWidget {
  const MyWidgetToAnimate3({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.black87,
        padding: const EdgeInsets.all(16),
        child: const Text(
          'WARNING!',
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
          ),
        ),
      ),
    );
  }
}
