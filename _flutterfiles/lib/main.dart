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
      title: 'Led Banner',
      theme: ThemeData(primaryColor: const Color.fromARGB(255, 238, 91, 54)),
      home: Homescreen(),
    );
  }
}
