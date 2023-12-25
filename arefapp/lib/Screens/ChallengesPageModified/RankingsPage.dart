import 'package:flutter/material.dart';

void main() {
  runApp(RankingsPage());
}

class RankingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rankings'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              top: 20.0, 
              left: 8.0,
              right: 8.0,
              bottom: 8.0,
            ),
            child: Row(
              children: [
                Text(
                  'سلمى عبيد',
                  style: TextStyle(
                    fontFamily:
                        'Alexandria', 
                    fontSize: 16.0, 
                    fontWeight: FontWeight
                        .bold, 
                    color: Colors.black, 
                  ),
                ),
                SizedBox(width: 8),
                CircleAvatar(
                  
                  backgroundImage:
                      NetworkImage('https://b.top4top.io/p_2915b41291.png'),
                ),
              ],
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 70.0, // Adjust this value to move it lower
          left: 8.0,
          right: 8.0,
          bottom: 8.0,
        ),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Search',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.search),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'ترتيب المتنافسين',
                  style: TextStyle(
                    fontFamily:
                        'Alexandria', 
                    fontSize: 20.0, 
                    fontWeight: FontWeight
                        .bold, 
                    color: Colors.black, 
                  ),
                ),
                SizedBox(width: 8),
                Icon(Icons.emoji_events), // Trophy icon
              ],
            ),
            SizedBox(height: 20),
            competitorInfo('رغد مبارك',
                'https://s3.amazonaws.com/pix.iemoji.com/images/emoji/apple/ios-12/256/1st-place-medal.png'),
            competitorInfo('لبنى سعود',
                'https://symbl-world.akamaized.net/i/webp/44/aeb3f103358a5144db93c45e022087.webp'),
            competitorInfo('حسام عبدالله',
                'https://em-content.zobj.net/source/apple/271/3rd-place-medal_1f949.png'),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'أكمل حيث توقفت',
                  style: TextStyle(
                    fontFamily:
                        'Alexandria', 
                    fontSize: 20.0, 
                    fontWeight: FontWeight
                        .bold, 
                    color: Colors.black, 
                  ),
                ),
                SizedBox(width: 8),
                Icon(Icons.flag_rounded),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 200, 
                  height: 100, 
                  child: Image.network('https://b.top4top.io/p_2915sfzyb1.png'),
                ),
                SizedBox(width: 10),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'قائمة المفضلات',
                  style: TextStyle(
                    fontFamily:
                        'Alexandria', 
                    fontSize: 20.0, 
                    fontWeight: FontWeight
                        .bold, 
                    color: Colors.black, 
                  ),
                ),
                SizedBox(width: 8),
                Icon(Icons.star_rounded),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget competitorInfo(String name, String imageUrl) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        mainAxisAlignment:
            MainAxisAlignment.center, // Center both vertically and horizontally
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: NetworkImage(imageUrl),
          ),
          SizedBox(
              height: 8), // Add vertical spacing between CircleAvatar and Text
          Text(
            name,
            textAlign: TextAlign.center, // Center the Text horizontally
          ),
        ],
      ),
    );
  }
}
