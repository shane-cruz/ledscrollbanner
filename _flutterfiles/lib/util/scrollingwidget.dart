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
      duration: Duration(seconds: widget.text.length), //THIS IS TIME - FIX IT
    );
  }

  @override
  void dispose() {
    motioncontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;

    //STATES THE ANIMATION BEHAVIOUR
    theAnimation =
        Tween<double>(begin: screenwidth, end: -screenwidth).animate(
            motioncontroller,
          ) //THIS IS DISTANCE- FIX IT TRY TO FIND A WIDGET TO MAKE THE SPEED CONSISTENT
          ..addListener(() {
            print(theAnimation.value);
            setState(() {});
          });
    motioncontroller.repeat();

    return Transform.translate(
      //moves widget with regards to  x to y axis
      offset: Offset(theAnimation.value, 0), // ALSO DISTANCE

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [myObject(text: widget.text.toUpperCase())],
      ),
    );
  }
}
