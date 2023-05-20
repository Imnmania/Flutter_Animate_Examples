import 'package:flutter/material.dart';

class MyWidgetToAnimate2 extends StatelessWidget {
  const MyWidgetToAnimate2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        'assets/coffee.png',
        height: 200,
        width: 200,
      ),
    );
  }
}
