import 'package:flutter/material.dart';
import 'package:insta_view/screen/Dash_screen.dart';
import 'package:insta_view/screen/like_screen.dart';
import 'package:insta_view/screen/profile_screen.dart';
import 'package:insta_view/screen/search_screen.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffF6F6F6),
        leading: Icon(
          Icons.camera_alt_outlined,
          color: Colors.grey.shade700,
          size: 25,
        ),
        centerTitle: true,
        title: Image.asset("assets/images/logo/insta logo.png",
            height: 90, width: 200),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.send, color: Colors.grey.shade700, size: 25),
          ),
        ],
      ),
      body: IndexedStack(
        index: i,
        children: [
          Dashscreen(),
          Searchscreen(),
          Likescreen(),
          Profilescreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: i,
        elevation: 0,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey.shade400,
        onTap: (value) {
          setState(() {
            i = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Icon(Icons.home, size: 30),
              ),label: ""),
          BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Icon(Icons.search, size: 30),
              ),label: ""),
          BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Icon(Icons.favorite_border, size: 30),
              ),label: ""),
          BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Icon(Icons.person_outlined, size: 30),
              ),label: ""),
        ],
      ),
    );
  }
}
