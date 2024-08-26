import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final List<String> video = [
    "assets/p1.png",
    "assets/p2.png",
    "assets/p3.png",
    "assets/p5.png",
    "assets/p6.png",
    "assets/p4.png",
    "assets/post1.png",
    "assets/post2.png",
    "assets/post3.png",
    "assets/p6.png",
    "assets/p4.png",
    "assets/p5.png",
  ];

  final List<int> img = [2, 3, 5, 6, 10, 7, 9];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      hintStyle: const TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.w700,
                      ),
                      prefixIcon: const Icon(Icons.search_sharp, color: Colors.white70),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
                      filled: true,
                      fillColor: Colors.transparent,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: video.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 1.0,
                    mainAxisSpacing: 1.0,
                    childAspectRatio: 1.0,
                  ),
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Image.asset(
                          video[index],
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity,
                        ),
                        if (img.contains(index))
                          Positioned(
                            top: 4,
                            right: 4,
                            child: Image.asset(
                              "assets/reel.png",
                              width: 24,
                              height: 24,
                            ),
                          ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
