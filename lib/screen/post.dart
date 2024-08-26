import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  const Post({super.key});

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  final List<String> video = [
    "assets/p5.png",
    "assets/p6.png",
    "assets/p4.png",
    "assets/p3.png",
    "assets/p2.png",
    "assets/post1.png"
  ];

  final List txt = ["POST","REELS","STORY","LIVE"];

  int selectedIndex = -1;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              SizedBox(height: 20),
              Row(
                children: [
                  Image.asset(
                    "assets/reel1.png",
                    color: Colors.white,
                    width: 20,
                    height: 20,
                  ),
                  SizedBox(width: 50),
                  Text(
                    "New post",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "Next",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
              Container(
                width: double.maxFinite,
                height: 300,
                child: Image.asset(
                  "assets/post2.png",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    "Recents",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Icon(Icons.keyboard_arrow_down, color: Colors.white),
                  Spacer(),
                  Container(
                    width: 170,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white24,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.copy_rounded, color: Colors.white),
                        Text(
                          "SELECT MULTIPLE",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.white24,
                    child: Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Expanded(
                child: Stack(
                  children: [
                    GridView.builder(
                      itemCount: video.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 1.0,
                        mainAxisSpacing: 1.0,
                        childAspectRatio: 1.0,
                      ),
                      itemBuilder: (context, index) {
                        return Image.asset(
                          video[index],
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity,
                        );
                      },
                    ),
                    Positioned(
                      bottom: 10,
                      right: 10,
                      child: Container(
                        width: 180,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: List.generate(3, (index) {
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedIndex = index;
                                });
                              },
                              child: Text(
                                txt[index],
                                style: TextStyle(
                                    color: selectedIndex == index
                                        ? Colors.white
                                        : Colors.white70,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            );
                          }),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
