import 'package:_flutterfiles/Banner.dart';
import 'package:flutter/material.dart';

//this will ask for the textcontroller
class Homescreen extends StatelessWidget {
  Homescreen({super.key});

  final messagecontroller = TextEditingController();

  //navigate and sends data to banner
  void gotobanner(BuildContext context) {
    final String data = messagecontroller.text;
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LedBannerScreen(data)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: const Color.fromARGB(255, 255, 255, 255),
        height: 200,
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(20),

        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: messagecontroller,
              decoration: InputDecoration(hintText: 'Input Message or Text'),
            ),
            ElevatedButton(
              onPressed: () => gotobanner(context),
              child: Text('Enter Banner'),
            ),
          ],
        ),
      ),
    );
  }
}
