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
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text('سلمى عبيد'),
                SizedBox(width: 8),
                CircleAvatar(
                  // Placeholder for user image
                  backgroundImage: NetworkImage('your_image_url_for_salma'),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
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
                Text('ترتيب المتنافسين'),
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
          ],
        ),
      ),
    );
  }

  Widget competitorInfo(String name, String imageUrl) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(imageUrl),
          ),
          SizedBox(width: 8),
          Text(name),
        ],
      ),
    );
  }
}
