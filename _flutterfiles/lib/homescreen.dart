import 'package:_flutterfiles/Banner.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//this will ask for the textcontroller
class Homescreen extends StatelessWidget {
  Homescreen({super.key});
  

  final messagecontroller = TextEditingController();

  //navigate and sends data to banner
  void gotobanner(BuildContext context) {
    final String data = messagecontroller.text;
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LedBannerScreen(data, )),
    );
  }

  @override
  Widget build(BuildContext context) {
    //screen on portrait
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return Scaffold(
      backgroundColor:  Theme.of(context).primaryColorDark,

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        
        children: [
          
          Container(
            
            height: 260,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 51, 51, 51)
          
            ),
            
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [Text ('Text Banner',style: TextStyle(fontSize: 26, color: Theme.of(context).primaryColor, fontWeight: FontWeight.bold))],
                ),
                TextField(
                  cursorColor: Theme.of(context).primaryColor,
                  
                  style: TextStyle( color: Theme.of(context).primaryColorLight),
                  controller: messagecontroller,
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                         borderSide: BorderSide(color: Theme.of(context).primaryColorLight,),),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color:Theme.of(context).primaryColor),),
                    hintText: 'Input Message or Text', 
                    hintStyle: TextStyle(color: Theme.of(context).
                    primaryColorLight)),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                             backgroundColor: Theme.of(context).primaryColor,
                             foregroundColor: Theme.of(context).primaryColorDark,
                          ),
                      onPressed: () => gotobanner(context),
                      child: Text('Show Banner'),
                    ),
                  ],
                ),


              ],
            ),
          ),
        ],
      ),
    );
  }
}
