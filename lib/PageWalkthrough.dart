import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}


class _WelcomeState extends State<Welcome> {
  late int currentIndexPage;
  double _currentPosition = 0.0;
  late int pageLength;

  @override
  void initState() {
    currentIndexPage = 0;
    pageLength = 4;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: <Widget>[
            PageView(
              children: <Widget>[
                Walkthrougth(textContent: "Walkthrough one",),
                Walkthrougth1(textContent: "Walkthrough two"),
                Walkthrougth2(textContent: "Walkthrough tree"),
                Walkthrougth3(textContent: "Walkthrough four"),
              ],
              onPageChanged: (value) {
                setState(() => currentIndexPage = value);
              },
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.7,
              // left: MediaQuery.of(context).size.width * 0.35,
              child: Padding(
                padding:
                EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.38),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Column(
                    children: [
                   //         DotsIndicator(
                   //        dotsCount: pageLength,
                   //        position: 4,
                   //        decorator: const DotsDecorator(
                   //        color: Colors.black87, // Inactive color
                   //        activeColor: Colors.redAccent,
                   //        ),
                   //        ),
                   // DotsIndicator(
                   //   dotsCount: pageLength,
                   //   position: 4,
                   //    decorator: DotsDecorator(
                   //    size: const Size.square(9.0),
                   //       activeSize: const Size(18.0, 9.0),
                   //  activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                   //  ),
                   //         ),
                      DotsIndicator(
                        dotsCount:  pageLength,
                          position: currentIndexPage,
                          // dotColor: Colors.black87,
                          // dotActiveColor: Colors.amber
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}

class Walkthrougth extends StatelessWidget {
  final String textContent;
  Walkthrougth({ required this.textContent}) : super();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.redAccent),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Center(child: Text(textContent)),
    );
  }
}
class Walkthrougth1 extends StatelessWidget {
  final String textContent;
  Walkthrougth1({ required this.textContent}) : super();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.blueGrey),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Center(child: Text(textContent)),
    );
  }
}
class Walkthrougth2 extends StatelessWidget {
  final String textContent;
  Walkthrougth2({ required this.textContent}) : super();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.green),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Center(child: Text(textContent)),
    );
  }
}
class Walkthrougth3 extends StatelessWidget {
  final String textContent;
  Walkthrougth3({ required this.textContent}) : super();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.blue),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Center(child: Text(textContent)),
    );
  }
}