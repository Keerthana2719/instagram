import 'package:flutter/material.dart';
import 'package:instagram/screen/home.dart';
import 'package:instagram/screen/post.dart';
import 'package:instagram/screen/profile.dart';
import 'package:instagram/screen/reels.dart';
import 'package:instagram/screen/search.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {

  int selected = 0;

  void itemtap(int index){
    setState(() {
      selected = index;
    });
  }
  final List page=[
    Home(),
    Search(),
    Post(),
    Reels(),
    Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[selected],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(size: 30),
        unselectedIconTheme: IconThemeData(size: 26),
        currentIndex: selected,
        onTap: itemtap,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/icn1.png",)), label: ""),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/icn2.png")), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
        ],
      ),
    );
  }
}
