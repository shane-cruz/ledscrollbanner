import 'package:_flutterfiles/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main()  {
  

  runApp(const LedBannerApp());
}

class LedBannerApp extends StatelessWidget {
  const LedBannerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Led Banner',
      theme: ThemeData(primaryColor: const Color.fromARGB(255, 2, 145, 180)),
      home: Homescreen(),
    );
  }
}
