import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intro/HomeScreen.dart';
import 'package:flutter_walkthrough_screen/flutter_walkthrough_screen.dart';

class Walkthrough extends StatelessWidget {

  final List<OnbordingData> list = [
    const OnbordingData(
      image: AssetImage("assets/user_interface.png"),
      titleText:Text("Let's Start Together",style: TextStyle(fontSize: 20),),
      descText: Text("This is desc1"),
    ),
    const OnbordingData(
      image: AssetImage("assets/mobile_app.png"),
      titleText:Text("This is Title2"),
      descText: Text("This is desc2"),
    ),
    const OnbordingData(
      image: AssetImage("assets/development.png"),
      titleText:Text("This is Title3"),
      descText: Text("This is desc4"),
    ),
    const OnbordingData(
      image: AssetImage("assets/children.webp"),
      titleText:Text("This is Title4"),
      descText: Text("This is desc4"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    /* remove the back button in the AppBar is to set automaticallyImplyLeading to false
  here we need to pass the list and the route for the next page to be opened after this. */
    return IntroScreen(
      onbordingDataList: list,
      colors: const [
        //list of colors for per pages
        Colors.white,
        Colors.red,
      ],
      pageRoute: MaterialPageRoute(
        builder: (context) => HomeScreen(),
      ),
      nextButton: const Text(
        "NEXT",
        style: TextStyle(
          color: Colors.purple,
        ),
      ),
      lastButton: const Text(
        "GOT IT",
        style: TextStyle(
          color: Colors.purple,
        ),
      ),
      skipButton: const Text(
        "SKIP",
        style: TextStyle(
          color: Colors.purple,
        ),
      ),
      selectedDotColor: Colors.orange,
      unSelectdDotColor: Colors.grey,
    );
  }
}