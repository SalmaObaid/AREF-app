import 'dart:ui';
import 'package:flutter/material.dart';

class CoursesPage extends StatelessWidget {
  final double fem = 1.0; 
  final double ffem = 1.0; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('المواد'), 
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: 1109, 
          decoration: BoxDecoration(
            color: Color(0xffffffff),
          ),
          child: Stack(
            children: [
              buildPositionedCourse('Java', 'مقدمة بالبرمجة 101',
                  Color(0xffc4b989), 12 * fem, 360 * fem),
              buildPositionedCourse('OOP', 'البرمجة الشيئية 102',
                  Color(0xffffddae), 13 * fem, 610 * fem),
              buildPositionedCourse('Python', 'مقدمة بالبرمجة 100',
                  Color(0xffb4e5bc), 13 * fem, 86 * fem),
            ],
          ),
        ),
      ),
    );
  }

  Positioned buildPositionedCourse(
      String title, String subtitle, Color bgColor, double left, double top) {
    return Positioned(
      left: left,
      top: top,
      child: GestureDetector(
        onTap: () {
         
          print('$title course tapped');
        },
        child: Container(
          width: 367.57,
          height: 182.13,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color(0x3f000000),
                offset: Offset(0 * fem, 0 * fem),
                blurRadius: 1 * fem,
              ),
            ],
          ),
          child: Container(
            padding: EdgeInsets.fromLTRB(12, 13, 10, 15),
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
              borderRadius: BorderRadius.circular(19),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ImageFiltered(
                  imageFilter: ImageFilter.blur(
                    sigmaX: 1.017781496 * fem,
                    sigmaY: 1.017781496 * fem,
                  ),
                  child: Container(
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 8.94 * fem),
                    width: double.infinity,
                    height: 114.59 * fem,
                    decoration: BoxDecoration(
                      color: bgColor,
                      borderRadius: BorderRadius.circular(8.9408807755 * fem),
                    ),
                    child: Center(
                      child: Text(
                        title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Alexandria',
                          fontSize: 70,
                          fontWeight: FontWeight.w600,
                          height: 1.2175 * ffem / fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 8.94 * fem),
                  child: Text(
                    subtitle,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Alexandria',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      height: 1.2,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    title: 'المواد',
    home: CoursesPage(),
  ));
}
