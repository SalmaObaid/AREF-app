import 'package:arefapp/Screens/onboarding.dart';
import 'package:arefapp/Screens/profilePage/my_account_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData(fontFamily: "Alexandria", backgroundColor: Colors.grey[50]),
      home:
          Directionality(textDirection: TextDirection.rtl, child: onBoarding()),

      // Scaffold(
      //   backgroundColor: Color.fromARGB(255, 91, 39, 100),
      //   body: SafeArea(
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         Image(
      //           image: AssetImage("images/Aref.png"),
      //           width: double.infinity,
      //         ),
      //         Text(
      //           "تعلم أسهل",
      //           style: TextStyle(
      //               fontSize: 30,
      //               color: Colors.white,
      //               fontWeight: FontWeight.bold),
      //         )
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
