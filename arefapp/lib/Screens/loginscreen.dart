import 'package:arefapp/Screens/homescreen.dart';
import 'package:flutter/material.dart';

final _formKey = GlobalKey<FormState>();

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  final _formfield = GlobalKey<FormState>();
  final psddwordCont = TextEditingController();
  final emailCont = TextEditingController();
  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
        child: Form(
            key: _formfield,
            child: Column(
              children: [
                Image(
                  image: AssetImage(
                    "images/lock.png",
                  ),
                  height: 200,
                ),
                SizedBox(
                  height: 40,
                ),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextFormField(
                    cursorColor: Colors.amberAccent,
                    style: TextStyle(fontFamily: "mid"),
                    decoration: InputDecoration(
                        hintText: "",
                        labelText: 'البريد الإلكتروني',
                        labelStyle: TextStyle(color: Colors.black87),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 2))),
                    validator: (value) {
                      bool emailvaliditon = RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value!);

                      if (value!.isEmpty) {
                        return " أدخل بريد إلكتروني";
                      } else if (!emailvaliditon) {
                        return "أدخل بريد إلكتروني صحيح";
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: psddwordCont,
                    obscureText: passToggle,
                    cursorColor: Colors.amberAccent,
                    style: TextStyle(fontFamily: "mid"),
                    decoration: InputDecoration(
                      hintText: "",
                      labelText: "كلمة المرور",
                      labelStyle: TextStyle(color: Colors.black87),
                      border: OutlineInputBorder(),
                      // enabledBorder: OutlineInputBorder(
                      //     borderSide: BorderSide(
                      //         width: 1, color: Colors.grey.shade900
                      //         )),
                      prefixIcon: Icon(Icons.lock, color: Colors.grey),
                      suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            passToggle = !passToggle;
                          });
                        },
                        child: Icon(
                            passToggle
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.black),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "أدخل كلمة مرور";
                      } else if (psddwordCont.text.length < 8) {
                        return "كلمة المرور يحب أن تكون أطول من 8 خانات";
                      }
                    },
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "نسيت كلمةالمرور؟",
                      style: TextStyle(color: Colors.black, fontFamily: "thin"),
                    )),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    if (_formfield.currentState!.validate()) {
                      print("نجح");
                      emailCont.clear();
                      psddwordCont.clear();
                    }
                  },
                  child: Container(
                    height: 55,
                    width: 229,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child: TextButton(
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) {
                            //       return Directionality(
                            //           textDirection: TextDirection.rtl,
                            //           child: HomeSceen());
                            //     },
                            //   ),
                            // );
                          },
                          child: Text(
                            "تسجيل دخول",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "mid",
                                fontSize: 24),
                          )),
                    ),
                  ),
                ),
                SizedBox(
                  height: 0,
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "ماعندك حساب؟",
                      style: TextStyle(color: Colors.black, fontFamily: "thin"),
                    )),
              ],
            )),
      )),
    ));
  }
}
