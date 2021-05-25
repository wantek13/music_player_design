import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'player_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderSection(),

            PlayListSection(),
          ],
        ),
      ),
      bottomNavigationBar: BottomSection(),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => new Size.fromHeight(60);
  const MyAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white.withOpacity(0),
      elevation: 0,
      leading: IconButton(icon: Icon(
        Icons.menu,
        color: Colors.white,
        size: 25,
      ),
        onPressed: null,
      ),
      actions: [
        IconButton(icon: Icon(
          Icons.more_vert,
          color: Colors.white,
          size: 25,),
          onPressed: null,
        )
      ],
    );
  }
}

class HeaderSection extends StatelessWidget {
  const HeaderSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/image1.jpg'),
            fit: BoxFit.cover
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50)
        )
      ),
      child: Stack(
        children: [
          Positioned(
              left: 20,
              bottom: 30,
              child: Text('Ariana Grande', style: GoogleFonts.arizonia(
                color: Colors.white,
                fontSize: 43,
                fontWeight: FontWeight.w800,
              ),)),
          Positioned(
              right: 0,
              bottom: 20,
              child: MaterialButton(
                color: Colors.blue,
                shape: CircleBorder(),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PlayerPage(),
                      ),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.all(17),
                  child: Icon(
                      Icons.play_arrow_rounded,
                      color: Colors.white,
                      size: 30,
                  ),
                ),
              )
          )
        ],
      ),
    );
  }
}

class PlayListSection extends StatelessWidget {

  final List playList = [
    {
      'title': 'No tears left to cry',
      'duration': '3.16',
      'played': false,
    },
    {
      'title': 'Imagine',
      'duration': '3.14',
      'played': true,
    },
    {
      'title': 'Into you',
      'duration': '4.32',
      'played': false,
    },
    {
      'title': 'positions',
      'duration': '2.58',
      'played': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(30, 40, 20, 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                  'Popular',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                child: Text(
                  'Show all',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 13,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Column(
            children: playList.map((song) {
              return Container(
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        song['title'],
                        style: TextStyle(
                            color: song['played'] ? Colors.blue : Colors.black,
                        ),
                    ),
                    Row(
                      children: [
                        Text(
                            song['duration'],
                            style: TextStyle(
                              color: song['played'] ? Colors.blue : Colors.black,
                            ),
                        ),
                        Icon(
                          Icons.more_vert,
                          color: song['played'] ? Colors.blue : Colors.grey,
                        )
                      ],
                    )
                  ],
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}

class BottomSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: Colors.blue,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.pause,
                color: Colors.white,
              ),
              label: '',
          ),
          BottomNavigationBarItem(
            icon: Text(
                    "imagine . Ariana grande"
                  ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.arrow_circle_up,
              color: Colors.white,
            ),
            label: '',
          ),
        ],
    );
  }
}



