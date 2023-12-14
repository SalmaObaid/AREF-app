import 'package:arefapp/Screens/intropage1.dart';
import 'package:arefapp/Screens/intropage2.dart';
import 'package:arefapp/Screens/intropage3.dart';
import 'package:arefapp/Screens/intropage4.dart';
import 'package:arefapp/Screens/intropage5.dart';

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class onBoarding extends StatefulWidget {
  const onBoarding({Key? key}) : super(key: key);

  @override
  State<onBoarding> createState() => _onBoardingState();
}

class _onBoardingState extends State<onBoarding> {
  PageController _controller = PageController();
  bool lastpage = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: Colors.grey[50],
        body: Stack(
          children: [
            PageView(
              controller: _controller,
              onPageChanged: (index) {
                setState(() {
                  lastpage = (index == 4);
                });
              },
              children: [
                intropage1(),
                intropage2(),
                intropage3(),
                intropage4(),
                intropage5(),
              ],
            ),
            Container(
              //color: Colors.amber,
              child: SmoothPageIndicator(
                  controller: _controller,
                  count: 5,
                  effect: WormEffect(
                      activeDotColor: Color.fromARGB(255, 187, 118, 199))),
              alignment: Alignment(0, 0.7),
            ),
            Positioned(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  lastpage
                      ? Text("")
                      : GestureDetector(
                          onTap: () {
                            _controller.jumpToPage(4);
                          },
                          child: Text("تخطي",
                              style: TextStyle(color: Colors.grey)),
                        ),
                  SizedBox(
                    width: 200,
                  ),
                  !lastpage
                      ? GestureDetector(
                          onTap: () {
                            _controller.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.easeInCubic);
                          },
                          child: Text("التالي",
                              style: TextStyle(color: Colors.grey)),
                        )
                      : Text("")
                  // : GestureDetector(
                  //     onTap: () {
                  //       Navigator.push(
                  //         context,
                  //         MaterialPageRoute(
                  //           builder: (context) {
                  //             return Directionality(
                  //                 textDirection: TextDirection.rtl,
                  //                 child: StartScreen());
                  //           },
                  //         ),
                  //       );
                  //     },
                  //   )
                ],
              ),
              bottom: 60,
              left: 60,
            ),
          ],
        ),
      ),
    );
  }
}
