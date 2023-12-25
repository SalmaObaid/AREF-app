import 'package:flutter/material.dart';

void main() {
  runApp(ChallengesList());
}

class ChallengesList extends StatelessWidget {
  const ChallengesList({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'التحديات',
      home: Scaffold(
        appBar: AppBar(
          title: Text('التحديات'),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    
                  },
                  child: Image.network(
                    'https://b.top4top.io/p_2914jx1xd1.png',
                    width: 250.0,
                    height: 250.0,
                    //fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 20.0),
                GestureDetector(
                  onTap: () {
                    
                  },
                  child: Image.network(
                    'https://c.top4top.io/p_2914y98qn2.png', 
                    width: 250.0,
                    height: 250.0,
                  ),
                ),
                SizedBox(height: 10.0),
                GestureDetector(
                  onTap: () {
                    
                  },
                  child: Image.network(
                    'https://d.top4top.io/p_2914rd8fh3.png', 
                    width: 250.0,
                    height: 250.0,
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
