import 'package:flutter/material.dart';
// This file contruct an object that contains the text/message,also designs it

class myObject extends StatelessWidget {

  final String text;

  myObject({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    //This give a gradient design
    return Container(
      child: ShaderMask(
        shaderCallback: (bounds) {
          return const LinearGradient(
            colors: [
              Colors.transparent,
              Colors.black,
              Colors.black,
              Colors.transparent,
            ],
            stops: [0.0, 0.1, 0.9, 1.0],
          ).createShader(bounds);
        },
        blendMode: BlendMode.dstIn,

        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 190),
            ),
          ],
        ),
      ),
    );
  }
}
