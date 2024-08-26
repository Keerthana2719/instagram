import 'package:flutter/material.dart';
import 'package:instagram/screen/chat.dart';
import 'package:instagram/screen/widget/post.dart';
import 'package:instagram/screen/widget/story.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        titleSpacing: 20,
        title: Text(
          "𝓘𝓷𝓼𝓽𝓪𝓰𝓻𝓪𝓶",
          style: TextStyle(
              color: Colors.white, fontSize: 33, fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite_outline,
                color: Colors.white,
                size: 25,
              )),
          IconButton(
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Chat()));
              },
              icon: Icon(
                Icons.sms_outlined,
                color: Colors.white,
                size: 25,
              ))
        ],
      ),
      body: Column(children: [
        Story(),Expanded(child: Postt())
      ],),
    );
  }
}
