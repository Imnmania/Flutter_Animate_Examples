import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'my_widget_to_animate_2.dart';

class Demo2 extends StatelessWidget {
  const Demo2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const MyWidgetToAnimate2()
          .animate(
            onComplete: (ctr) => ctr.repeat(),
          )
          .shimmer(delay: 400.ms, duration: 1800.ms)
          .shake(hz: 2, curve: Curves.easeInOutCubic)
          .scaleXY(end: 1.2, duration: 600.ms)
          .then(delay: 600.ms)
          .scaleXY(end: 1.0 / 1.2)
          .then(delay: 600.ms),
    );
  }
}
