import 'package:flutter/material.dart';

class intropage3 extends StatelessWidget {
  const intropage3({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.grey[50],
            body: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: Text(
                    "يمديك تنظم لتحديات عارف الحالية أو حتى تنشئ تحديك الخاص",
                    style: TextStyle(
                        fontSize: 30, fontWeight: FontWeight.w400, height: 1.7),
                  ),
                  width: 340,
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  child: Image(
                    image: AssetImage("images/Computative.png"),
                    height: 299,
                  ),
                  alignment: AlignmentDirectional.center,
                )
              ],
            )));
  }
}
