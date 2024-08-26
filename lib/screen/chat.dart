import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  final List<Map<String, String>> story = [
    {"images": "assets/p1.png", "username": "ar_anthony", "msg": "Seen 15m ago"},
    {"images": "assets/p2.png", "username": "desha", "msg": "Liked a message.13h"},
    {"images": "assets/p3.png", "username": "_pricess_", "msg": "Mentioned you in a story.17h"},
    {"images": "assets/p6.png", "username": "_snowly_queen", "msg": "Seen 2m ago"},
    {"images": "assets/p5.png", "username": "_suriya_josh", "msg": "Reacted to your message..  32m"},
    {"images": "assets/p4.png", "username": "akshath556", "msg": "Liked a message.13h"}
];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back_ios,color: Colors.white,),),
          title: Text(
            "hyung_daniel",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.edit_note_outlined,size: 30,color: Colors.white,))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              SizedBox(height: 20),
              Container(
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(20.0), // Adjust the border radius as needed
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.w700,
                    ),
                    prefixIcon: Icon(Icons.search_sharp, color: Colors.white70),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20.0), // Match the radius here
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0), // Reduce the height
                    filled: true,
                    fillColor: Colors.transparent, // Transparent to show the container's color
                  ),
                ),
              ),

              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Message", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
                  Text("Requests", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
                ],
              ),
              SizedBox(height: 15),
              Expanded(
                child: ListView.builder(
                  itemCount: story.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(story[index]['images']!),
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  story[index]['username']!,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  story[index]['msg']!,
                                  style: TextStyle(
                                    color: Colors.white70,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Icon(Icons.camera_alt_outlined, color: Colors.white),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
