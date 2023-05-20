import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

//

class Demo5 extends StatefulWidget {
  const Demo5({super.key});

  @override
  State<Demo5> createState() => _Demo5State();
}

class _Demo5State extends State<Demo5> {
  bool _toggle = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          setState(() {
            _toggle = !_toggle;
          });
        },
        child: const Center(
          child: Text(
            'Click Me!',
            style: TextStyle(fontSize: 60),
          ),
        ).animate(target: _toggle ? 1 : 0).scaleXY(
              end: 1.5,
              curve: _toggle ? Curves.bounceOut : Curves.bounceIn,
            ),
      ),
    );
  }
}
