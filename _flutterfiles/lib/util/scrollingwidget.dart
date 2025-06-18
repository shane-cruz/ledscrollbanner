import 'package:_flutterfiles/util/object.dart';
import 'package:flutter/material.dart';

//This will return the obj and assigns the text and gave it an animation
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
      duration: Duration(seconds: 4),
    );

    theAnimation = Tween<double>(begin: 0, end: 10).animate(motioncontroller)
      ..addListener(() {
        // print(theAnimation.value);
        setState(() {});
      });
    motioncontroller.repeat();
  }

  @override
  void dispose() {
    motioncontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left:50* theAnimation.value),

      child: myObject(text: widget.text)
    );
  }
}
