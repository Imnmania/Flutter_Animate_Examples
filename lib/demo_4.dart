import 'package:flutter/material.dart';
import 'package:flutter_animate_example/my_widget_to_animate_4.dart';

/// -----------------------
/// [ScrollAdapter] example
/// -----------------------
class Demo4 extends StatefulWidget {
  const Demo4({super.key});

  @override
  State<Demo4> createState() => _Demo4State();
}

class _Demo4State extends State<Demo4> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        /// animation code is inside [MyWidgetToAnimate4]
        child: MyWidgetToAnimate4(
          scrollController: _scrollController,
        ),
      ),
    );
  }
}
