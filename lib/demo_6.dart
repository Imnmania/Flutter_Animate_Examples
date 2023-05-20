import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class Demo6 extends StatelessWidget {
  const Demo6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// ---------------------------------------------------------
      /// * [RepaintBoundary] is recommended for complex animations
      /// it helps with the performance
      /// ---------------------------------------------------------
      body: RepaintBoundary(
        child: Animate()
            .custom(
              duration: 5.seconds,
              begin: 5,
              end: 0,
              builder: (_, value, __) {
                return Center(
                  child: Text(
                    '${value == 0 ? '🤯' : value.ceil()}',
                    style: const TextStyle(
                      fontSize: 100,
                    ),
                  ),
                );
              },
            )
            .slideY(begin: -0.4)
            .shakeX(hz: 8, curve: Curves.easeIn)
            .then()
            .scaleXY(end: 2, duration: 100.ms),
      ),
    );
  }
}
