import 'package:flutter/material.dart';
import 'package:instagram/class/post.dart';

class Postt extends StatelessWidget {
  const Postt({super.key});

  @override
  Widget build(BuildContext context) {
    final List<PostData> posts = [
      PostData(
        title: "desha",
        imagePath: "assets/post1.png",
        profileImagePath: "assets/p4.png",
        likes: 240,
        comments: "view all 50 comments",
        description: "We are one EXO",
      ),
      PostData(
        title: "princess",
        imagePath: "assets/post2.png",
        profileImagePath: "assets/p5.png",
        likes: 111,
        comments: "view all 30 comments",
        description: "Day Dreamer",
      ),
      PostData(
        title: "_josph_surya_",
        imagePath: "assets/post3.png",
        profileImagePath: "assets/p4.png",
        likes: 150,
        comments: "view all 100 comments",
        description: "Dad and Son cute",
      ),
    ];

    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (context, index) {
        final post = posts[index];

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
              leading: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(post.profileImagePath),
              ),
              title: Text(
                post.title,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 20),
              ),
              trailing: const Icon(
                Icons.more_vert,
                color: Colors.white,
                size: 25,
              ),
            ),
            SizedBox(
              height: 400,
              width: double.infinity,
              child: Image.asset(
                post.imagePath,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 28,
                      ),
                      const SizedBox(width: 10),
                      Image.asset(
                        "assets/icn3.png",
                        height: 23,
                        width: 23,
                        color: Colors.white,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(width: 10),
                      Image.asset(
                        "assets/icn4.png",
                        height: 23,
                        width: 23,
                        color: Colors.white,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.bookmark_border_outlined,
                    color: Colors.white,
                    size: 28,
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Text(
                "${post.likes} likes",
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                post.description,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                post.comments,
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(height: 15),
          ],
        );
      },
    );
  }
}
