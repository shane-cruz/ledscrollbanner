import 'package:_flutterfiles/util/object.dart';
import 'package:_flutterfiles/util/scrollingwidget.dart';
import 'package:flutter/material.dart';

// This calls the objects and the animation file
class LedBannerScreen extends StatefulWidget {
  
  //retrieve data from prev screen
  final String data;
  LedBannerScreen(this.data);

  @override
  State<LedBannerScreen> createState() => _LedBannerScreenState();
}

class _LedBannerScreenState extends State<LedBannerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: ScrollingAnimation(text: widget.data)),
    );
  }
}
