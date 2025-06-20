// import 'package:_flutterfiles/util/object.dart';
// import 'package:flutter/material.dart';


// //Widget for animation in screen2 - returns the object
// class ScrollingAnimation extends StatefulWidget {
//   final String text;
//   const ScrollingAnimation({super.key, required this.text});

//   @override
//   State<ScrollingAnimation> createState() => ScrollingAnimationState();
// }

// class ScrollingAnimationState extends State<ScrollingAnimation>
//     with SingleTickerProviderStateMixin {
//    AnimationController  ? motioncontroller;
//    Animation<double> ? theAnimation;

//   int value(String text) {
//     if (text.length <= 6) {
//       return 0;
//     } else {
//       int time = (6 - text.length) * 5 ;
//       return time;
//     }
//   }

//   @override
//   void initState() {
//     super.initState();
//     final thustime = value(widget.text) + 4;
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//     final screenwidth = MediaQuery.of(context).size.width;

//       //initialize the animation and its duration
//       motioncontroller = AnimationController(
//       vsync: this,
//       duration: Duration(seconds: thustime), //THIS IS TIME
//     );

//     //initialize the animation movement
//     theAnimation = Tween<double>(begin: screenwidth, end: -screenwidth)
//       .animate(motioncontroller)
//     ..addListener(() {
//       setState(() {});
//     });

//   motioncontroller.repeat();
// });

//   }

//   @override
//   void dispose() {
//     motioncontroller?.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (motioncontroller == null || theAnimation == null) return const SizedBox();
//     offset: Offset(theAnimation!.value, 0)


//     return Transform.translate(
//       //moves widget with regards to  x to y axis
//       offset: Offset(theAnimation.value, 0), // This is speed

//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [myObject(text: widget.text.toUpperCase())],
//       ),
//     );
//   }
// }

