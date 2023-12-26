import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class HomeSceen extends StatefulWidget {
  const HomeSceen({super.key});

  @override
  State<HomeSceen> createState() => _HomeSceenState();
}

class _HomeSceenState extends State<HomeSceen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: GNav(
        backgroundColor: Colors.white,
        color: Colors.purple[500],
        activeColor: Colors.purple[500],
        tabBackgroundColor: Color.fromARGB(255, 243, 200, 251),
        padding: EdgeInsets.all(22),
        gap: 7,
        tabs: const [
          GButton(
            icon: Icons.person,
            text: 'My Profile',
          ),
          GButton(
            icon: Icons.book,
            text: 'Courses',
          ),
          GButton(
            icon: Icons.bolt_outlined,
            text: 'challenges',
          ),
          GButton(
            icon: Icons.trending_up_outlined,
            text: 'Ranks',
          ),
        ],
      ),
      body: SafeArea(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications,
                      size: 35,
                      color: Colors.yellow[400],
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.chat_outlined,
                      size: 35,
                      color: Colors.black,
                    )),
                SizedBox(
                  width: 75,
                ),
                Column(
                  //crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      ' لمى السحيلي  ',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple[300],
                      ),
                    ),
                    Text(
                      'المستوى: 1',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple[300],
                      ),
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(12),
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/pic.png"),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(50)),
                ),
              ],
            ),
          ),
          SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17),
            child: Container(
              padding: const EdgeInsets.all(20),
              height: 230,
              decoration: BoxDecoration(
                  color: Colors.blue[100],
                  borderRadius: BorderRadius.circular(14)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 130,
                    width: 100,
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/arti2.png'),
                  fit: BoxFit.fill,)),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    children: [
                      Text(
                        ' افضل المقالات ',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        "افضل المقالات التي تتم كتابتها \nعن طريق المتعلمين في البرنامج",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 25),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 50,vertical: 13),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 167, 198),
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                            child: Text(
                          'ابدأ القراءة',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        )),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                  hintText: 'Search',
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
            
            children:
            [
              Text('أكمل تقدمك', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),)
            ],),
          ),
          Container(
            height: 200,
            
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
              Container(
      padding: EdgeInsets.all(10),
      child: Row(children: [
        Container(
            alignment: AlignmentDirectional(0, 0),
            height: 200,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.amber[300],
                borderRadius: BorderRadius.circular(10)),
            child: Text(
              'تراكيب محددة',
              style: TextStyle(color: Colors.white, fontSize: 50,fontWeight: FontWeight.bold),
            )),
      ]),
    ),
    Container(
      padding: EdgeInsets.all(10),
      child: Row(children: [
        Container(
            alignment: AlignmentDirectional(0, 0),
            height: 200,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.blue[200],
                borderRadius: BorderRadius.circular(10)),
            child: Text(
              'Java 101',
              style: TextStyle(color: Colors.white, fontSize: 50,fontWeight: FontWeight.bold),
            )),
      ]),
    )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
