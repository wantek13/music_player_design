import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlayerPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: MyAppBar(),
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ImageAuthor(),
            PlayerControl(),
          ],
        ),
      ),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => new Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white.withOpacity(0),
      elevation: 0,
      leading: IconButton(icon: Icon(
        Icons.chevron_left,
        color: Colors.white,
        size: 30,
      ),
        onPressed: () {
          Navigator.pop(context);
        }
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

class ImageAuthor extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 550,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/image1.jpg'),
          fit: BoxFit.cover,
        )
      ),
      child: Stack(
        children: [
          TitleSection(),
          ArtistPictureSection(),
        ],
      ),
    );
  }
}

class TitleSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Artist",
            style: GoogleFonts.lato(

              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w300
            ),
          ),
          Text(
            "Ariana Grande",
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.w800
            ),
          )
        ],
      ),
    );
  }
}

class ArtistPictureSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: 200
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(50)
        )
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 65,
            child: Container(
                height: 250,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50)
                  )
                ),
            )
          ),
          Positioned(
            top: 50,
            child: Container(
                width: 250,
                height: 275,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/image1.jpg'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.blue.withOpacity(1),
                        BlendMode.darken
                    )
                  ),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50)
                  )
                ),
            )
          )
        ],
      ),
    );
  }
}

class PlayerControl extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          PlayingMusicTitle(),
          MusicSliderSection(),
          DurationSection(),
          MusicControlButtonSection(),
        ],
      ),
    );
  }
}

class PlayingMusicTitle extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          Text(
            'Imagine',
            style: GoogleFonts.lato(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.w700
            ),
          ),
          SizedBox(height: 3,),
          Text(
            'Ariana Grande',
            style: GoogleFonts.lato(
                color: Colors.blue,
                fontSize: 14,
                fontWeight: FontWeight.w400
            ),
          )
        ],
      ),
    );
  }
}

class MusicSliderSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Slider(
        value: 19,
        min: 1.0,
        max: 100,
        activeColor: Colors.blue,
        inactiveColor: Colors.grey,
        onChanged: (double newValue) {},
      ),
    );
  }
}

class DurationSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 27, right: 27, bottom: 15
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "1:08",
            style: GoogleFonts.lato(
              fontWeight: FontWeight.w400,
              fontSize: 14.0,
              color: Colors.grey,
            ),
          ),
          Text(
            '3.14',
            style: GoogleFonts.lato(
              fontWeight: FontWeight.w400,
              fontSize: 14.0,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

class MusicControlButtonSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}






