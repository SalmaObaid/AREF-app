import 'package:flutter/material.dart';

class intropage1 extends StatelessWidget {
  const intropage1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.grey[50],
            body: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Container(
                  child: Text(
                    "في عارف نحدد مستواك حتى نقدم لك المواد الأنسب",
                    style: TextStyle(
                        fontSize: 30, fontWeight: FontWeight.w400, height: 1.7),
                  ),
                  width: 340,
                ),
                SizedBox(
                  height: 7,
                ),
                Container(
                  child: Image(
                    image: AssetImage("images/ranking1.png"),
                    height: 290,
                  ),
                  alignment: AlignmentDirectional.center,
                )
              ],
            )));
  }
}
