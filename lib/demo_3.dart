import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'my_widget_to_animate_3.dart';

class Demo3 extends StatelessWidget {
  const Demo3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const MyWidgetToAnimate3()
          .animate(
            //? for infinite loop
            // onPlay: (controller) => controller.repeat(reverse: true),

            //? for controlled loop
            onPlay: (controller) => controller.loop(count: 4, reverse: true),

            //? we can also create our own AnimationController for more control
            // controller: _myController,
          )
          .scaleXY(duration: 500.ms, end: 1.2, curve: Curves.easeInOutCubic)
          .tint(color: Colors.red, end: 0.5),
    );
  }
}
