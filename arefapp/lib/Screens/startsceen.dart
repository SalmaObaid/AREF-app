import 'package:arefapp/Screens/loginscreen.dart';
import 'package:arefapp/Screens/signupscreen.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
            body: Stack(
          children: [
            Container(
              alignment: AlignmentDirectional.topCenter,
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color.fromARGB(255, 141, 162, 218),
                Color.fromARGB(255, 148, 117, 222),
              ])),
              padding: EdgeInsets.all(80),
              child: Image(
                image: AssetImage("images/login.png"),
                height: 350,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 575),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
                width: double.infinity,
                child: Column(children: [
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "  أنر معرفتك مع عــارف",
                    style: TextStyle(
                        color: Color(0xFFC9A7EB),
                        fontFamily: "mid",
                        fontSize: 25),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size(300, 60),
                          backgroundColor: Color(0xFFC9A7EB),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40))),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: loginScreen());
                            },
                          ),
                        );
                      },
                      child: Text(
                        " تـسـجـيـل دخـول ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: "blod"),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size(300, 60),
                          backgroundColor: Color(0xFFDBDFEA),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40))),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: signupscreen());
                            },
                          ),
                        );
                      },
                      child: Text(
                        " حـسـاب جـديـد ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: "blod"),
                      )),
                ]),
              ),
            )
          ],
        )),
      ),
    );
  }
}
