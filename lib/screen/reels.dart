import 'package:flutter/material.dart';

class Reels extends StatefulWidget {
  const Reels({super.key});

  @override
  State<Reels> createState() => _ReelsState();
}

class _ReelsState extends State<Reels> {
  final List reels = [
    "assets/post4.png",
    "assets/post5.png",
    "assets/post6.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: reels.length,
        scrollDirection: Axis.vertical, // Scroll vertically
        itemBuilder: (context, index) {
          return Stack(
            children: [
              // Image that covers the full page
              Image.asset(
                reels[index],
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover, // Ensure the image covers the entire space
              ),
              // Positioned widget to place the icons in the top right corner
              Positioned(
                top: 40, // Adjust as needed for proper padding
                right: 20, // Adjust as needed for proper padding
                child: Column(
                  children: [
                    Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.white, // Color for better visibility
                    ),
                    SizedBox(height: 300), // Adjust the spacing between icons
                    Icon(
                      Icons.favorite_outline,
                      color: Colors.white, // Color for better visibility
                      size: 30, // Adjust the icon size as needed
                    ),
                    SizedBox(height: 30),
                    ImageIcon(
                      AssetImage("assets/icn3.png"),
                      color: Colors.white,
                    ),
                    SizedBox(height: 30),
                    ImageIcon(
                      AssetImage("assets/icn4.png"),
                      color: Colors.white,
                    ),
                    SizedBox(height: 30),
                    Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                    SizedBox(height: 25),
                    Container(
                      width: 25,
                      height: 25,
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        border: Border.all(color: Colors.white),
                      ),
                      child: Icon(
                        Icons.music_note,
                        size: 15,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              // Align widget to place content at the bottom left
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(
                      16.0), // Add some padding for better spacing
                  child: Column(
                    mainAxisSize:
                        MainAxisSize.min, // Adjust size to fit content
                    crossAxisAlignment:
                        CrossAxisAlignment.start, // Align content to the start
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage("assets/p4.png"),
                          ),
                          SizedBox(
                              width:
                                  10), // Adjust spacing between avatar and text
                          Text(
                            "cherry_love_world",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(width: 10),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical:
                                    4), // Add padding inside the container
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.white,
                              ), // Add a white border
                            ),
                            child: Center(
                              child: Text(
                                "Follow",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5), // Add spacing between rows
                      Row(
                        children: [
                          Text(
                            "Hello",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          Image.asset(
                            "assets/reel2.png",
                            width: 25,
                            height: 25,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            "....",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(height: 5), // Add spacing between rows
                      Container(
                        width: 240,
                        height: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.transparent.withOpacity(0.3),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.music_note,
                              color: Colors.white,
                              size: 15,
                            ),
                            Expanded(
                              child: Text(
                                "kutty_azhagi_natchu • Original audio",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
