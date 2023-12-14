import 'package:arefapp/Screens/startsceen.dart';
import 'package:flutter/material.dart';

class intropage5 extends StatelessWidget {
  const intropage5({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.grey[50],
            body: Column(
              verticalDirection: VerticalDirection.down,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                ),
                Container(
                  alignment: AlignmentDirectional.center,
                  child: Text(
                    "في الدردشة الجماعية يمديك تتشارك المعرفة أو تتناقش مع المستخدمين",
                    style: TextStyle(
                        fontSize: 30, fontWeight: FontWeight.w400, height: 1.7),
                  ),
                  width: 310,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Image(
                    image: AssetImage("images/chat.png"),
                    height: 231,
                  ),
                  alignment: AlignmentDirectional.center,
                ),
                SizedBox(height: 233),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(190, 50),
                        backgroundColor: Color.fromARGB(255, 187, 118, 199),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40))),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Directionality(
                                textDirection: TextDirection.rtl,
                                child: StartScreen());
                          },
                        ),
                      );
                    },
                    child: Text(
                      "     أنـــطـــلـــق 🚀 ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w600),
                    )),
              ],
            )));
  }
}
