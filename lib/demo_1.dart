import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'my_widget_to_animate_1.dart';

class Demo1 extends StatelessWidget {
  const Demo1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const MyWidgetToAnimate1()
          .animate()
          .fadeIn(duration: 500.ms)
          .then()
          .slideY(end: 0.2, duration: 700.ms, curve: Curves.bounceOut)
          .then()
          .shake(
            hz: 2,
            delay: 300.ms,
            duration: 800.ms,
            curve: Curves.decelerate,
          ),
    );
  }
}
