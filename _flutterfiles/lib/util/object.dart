import 'package:flutter/material.dart';

// This file contruct an object that contains the text/message,also designs it

class myObject extends StatelessWidget {
  final String text;

  myObject({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    //This give a gradient design
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 190,
            ),
          ),
        ],
      ),
    );
  }
}
