import 'package:flutter/material.dart';

class intropage4 extends StatelessWidget {
  const intropage4({super.key});

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
                    "تقدر تسأل عارف وتستفسر من عارف في حال واجهتك مشكلة ",
                    style: TextStyle(
                        fontSize: 30, fontWeight: FontWeight.w400, height: 1.7),
                  ),
                  width: 340,
                ),
                SizedBox(height: 57),
                Container(
                  child: Image(
                    image: AssetImage("images/warning.png"),
                    height: 211,
                  ),
                  alignment: AlignmentDirectional.center,
                )
              ],
            )));
  }
}
