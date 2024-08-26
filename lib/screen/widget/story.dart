import 'package:flutter/material.dart';

class Story extends StatelessWidget {

  final List<Map<String, String>> story = [
    {"images": "assets/p1.png", "username": "Your Story"},
    {"images": "assets/p2.png", "username": "akshath27"},
    {"images": "assets/p3.png", "username": "ar_anthony"},
    {"images": "assets/p4.png", "username": "desha"},
    {"images": "assets/p5.png", "username": "princess"},
    {"images": "assets/p6.png", "username": "_joseph_suriya_"},
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(story.length, (index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                children: [
                  Container(
                    width: 67,
                    height: 67,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xFF902282), Color(0xFFEEA863)],
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Container(
                        height: 64,
                        width: 64,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(story[index]["images"]!),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 4),
                  SizedBox(
                    width: 67, // Match the width of the circle
                    child: Text(
                      story[index]["username"]!,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
