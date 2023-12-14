import 'package:flutter/material.dart';

class intropage2 extends StatelessWidget {
  const intropage2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.grey[50],
            body: Column(
              verticalDirection: VerticalDirection.down,
              children: [
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: Text(
                    "بعد كل درس عارف يختبرك حتى يتأكد من فهمك",
                    style: TextStyle(
                        fontSize: 30, fontWeight: FontWeight.w400, height: 1.7),
                  ),
                ),
                SizedBox(
                  height: 102,
                ),
                Container(
                  child: Image(
                    image: AssetImage("images/quizicon.png"),
                    height: 231,
                  ),
                )
              ],
            )));
  }
}
