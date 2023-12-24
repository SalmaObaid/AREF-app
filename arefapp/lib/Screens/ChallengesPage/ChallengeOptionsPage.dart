import 'package:flutter/material.dart';
import 'package:arefapp/Screens/ChallengesList.dart';

void main() {
  runApp(ChallengeOptionsPage());
}

class ChallengeOptionsPage extends StatelessWidget {
  const ChallengeOptionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    double fem = 1.0; // You can adjust this value as needed.
    double ffem = 1.0; // You can adjust this value as needed.

    return MaterialApp(
      title: 'التحديات',
      home: Scaffold(
        appBar: AppBar(
          title: Text('التحديات'),
        ),
        body: Container(
          width: double.infinity,
          height: 852 * fem,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
          ),
          child: Stack(
            children: [
              Positioned(
                left: 33 * fem,
                top: 200 * fem,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Directionality(
                          textDirection: TextDirection.ltr,
                          child: ChallengesList());
                    }));
                  },
                  child: Container(
                    width: 327 * fem,
                    height: 232 * fem,
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(20 * fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0 * fem, 0 * fem),
                          blurRadius: 2 * fem,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'التحديات الحالية',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Alexandria',
                          fontSize: 26.6666660309 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.3125000313 * ffem / fem,
                          letterSpacing: -0.2427053154 * fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 172 * fem,
                top: 248 * fem,
                child: Container(
                  width: 50 * fem,
                  height: 50 * fem,
                  child: Center(
                    child: SizedBox(
                      width: 50 * fem,
                      height: 50 * fem,
                      child: Image.network(
                        'https://hotemoji.com/images/emoji/u/n31bt11w5zesu.png', // Replace with actual image URL
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 33 * fem,
                top: 463 * fem,
                child: Container(
                  width: 327 * fem,
                  height: 232 * fem,
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.circular(20 * fem),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x3f000000),
                        offset: Offset(0 * fem, 0 * fem),
                        blurRadius: 2 * fem,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      'إنشاء تحدي جديد',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Alexandria',
                        fontSize: 26.6666660309 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.3125000313 * ffem / fem,
                        letterSpacing: -0.2427053154 * fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 172 * fem,
                top: 511 * fem,
                child: Container(
                  width: 50 * fem,
                  height: 50 * fem,
                  child: Center(
                    child: SizedBox(
                      width: 50 * fem,
                      height: 50 * fem,
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdSdJjRmBmfebD5i5NN6-w2MOyxbJEn84_1r8Te8acEQIxHLP3SY7egIMnepLYHVwIZkg&usqp=CAU', // Replace with actual image URL
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0 * fem,
                top: 0 * fem,
                child: Container(
                  padding: EdgeInsets.fromLTRB(
                      20.5 * fem, 11 * fem, 17.5 * fem, 0 * fem),
                  width: 393 * fem,
                  height: 117 * fem,
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
