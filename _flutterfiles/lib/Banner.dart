import 'package:_flutterfiles/util/scrollingwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Screen 2- calls scrollingwidget

class LedBannerScreen extends StatefulWidget {
  //retrieve data from prev screen(Homescreen)
  final String data;
  LedBannerScreen(this.data);

  @override
  State<LedBannerScreen> createState() => _LedBannerScreenState();
}

class _LedBannerScreenState extends State<LedBannerScreen> {
  //screen on landscape
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColorDark,
      body: Container(
        child: ListView(//this may or may not be needed
          scrollDirection: Axis.horizontal,
          children: [ScrollingAnimation(text: widget.data)],
        ),
      ),
    );
  }
}
