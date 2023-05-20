import 'package:flutter/material.dart';

class MyWidgetToAnimate1 extends StatelessWidget {
  const MyWidgetToAnimate1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.deepPurple[500],
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Text(
          'Animate Me!',
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
          ),
        ),
      ),
    );
  }
}
