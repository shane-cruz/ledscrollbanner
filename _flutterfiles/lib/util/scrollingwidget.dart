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

  @override
  void initState() {
    super.initState();
    motioncontroller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );

    theAnimation = Tween<double>(begin: 0, end: 20).animate(motioncontroller)
      ..addListener(() {
        // print(theAnimation.value);
        setState(() {});
      });
    motioncontroller.repeat();

    @override
    void dispose() {
      motioncontroller.dispose();
      super.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 50 * theAnimation.value),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [myObject(text: widget.text)],
      ),
    );
  }
}
