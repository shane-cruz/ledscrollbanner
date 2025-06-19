import 'package:_flutterfiles/homescreen.dart';
import 'package:flutter/material.dart';


void main()  {
  

  runApp(const LedBannerApp());
}

class LedBannerApp extends StatelessWidget {
  const LedBannerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color:  const Color.fromARGB(255, 47, 150, 163),
      title: 'Led Banner',
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 162, 228, 224), 
        primaryColorLight: const Color.fromARGB(255, 233, 248, 255),
        primaryColorDark: const Color.fromARGB(255, 24, 24, 24)),
      home: Homescreen(),
    );
  }
}
