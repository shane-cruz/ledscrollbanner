

import 'package:_flutterfiles/util/object.dart';
import 'package:flutter/material.dart';

//Widget for animation in screen2 - returns the object
class ScrollingAnimation extends StatefulWidget {
  final String text;
  const ScrollingAnimation({super.key, required this.text});

  @override
  State<ScrollingAnimation> createState() => ScrollingAnimationState();
}

class ScrollingAnimationState extends State<ScrollingAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController motioncontroller;
  late Animation<double> theAnimation;
  late int time = (theAnimation.value / speed(widget.text)).round();
  late double distance = speed(widget.text) * 4;

  int speed(String text) {
    if (text.length <= 6) {
      return 0;
    } else {
      return (6 - text.length) * 5;
    }
  }

  @override
  void initState() {
    super.initState();

    motioncontroller = AnimationController(
      vsync: this,
      duration: Duration(seconds: time), //THIS IS TIME - FIX IT
    );
  }

  @override
  void dispose() {
    motioncontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double screenwidth = MediaQuery.of(context).size.width;

    //STATES THE ANIMATION BEHAVIOUR
    theAnimation =
        Tween<double>(
          begin: screenwidth,
          end: -screenwidth,
        ).animate(motioncontroller)..addListener(() {
          setState(() {});
        });
    motioncontroller.repeat();

    return Transform.translate(
      //moves widget with regards to  x to y axis
      offset: Offset(distance, 0),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [myObject(text: widget.text.toUpperCase())],
      ),
    );
  }
}
