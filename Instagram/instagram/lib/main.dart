// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Projem',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Column(
          children: [
            Container(
                width: double.infinity,
                height: 45,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Image.asset("assets/images/logo.jpg"),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.add_circle,
                            color: Colors.black87,
                            size: 20,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.favorite,
                            color: Colors.black87,
                            size: 20,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, left: 8, bottom: 8, right: 20),
                          child: Icon(
                            Icons.send,
                            color: Colors.black87,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
            Expanded(
              child: Container(
                //width: 50,
                child: SingleChildScrollView(
                  child: Column(children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: SingleChildScrollView(
                        child: Row(
                          children: [
                            StoryWidget("assets/images/p9.jpeg", "Eda Aydın"),
                            StoryWidget(
                                "assets/images/p10.jpg", "Ahmet Selim Över"),
                            StoryWidget(
                                "assets/images/p11.jpg", "Keyvan Arasteh"),
                            StoryWidget("assets/images/p3.jpg", "Zehra Över"),
                            StoryWidget("assets/images/p9.jpeg", "Eda Aydın"),
                            StoryWidget(
                                "assets/images/p10.jpg", "Ahmet Selim Över"),
                            StoryWidget(
                                "assets/images/p11.jpg", "Keyvan Arasteh"),
                            StoryWidget("assets/images/p3.jpg", "Zehra Över"),
                            StoryWidget("assets/images/p9.jpeg", "Eda Aydın"),
                          ],
                        ),
                      ),
                    ),
                    PostItem("assets/images/p9.jpeg", "assets/images/p7.jpeg",
                        "Eda Aydın", "İstanbul"),
                    PostItem("assets/images/p10.jpg", "assets/images/p1.jpg",
                        "Ahmet Selim Över", "İstanbul"),
                    PostItem("assets/images/p11.jpg", "assets/images/p2.jpg",
                        "Keyvan Arasteh", "İstanbul"),
                    PostItem("assets/images/p3.jpg", "assets/images/p4.jpg",
                        "Zehra Över", "İstanbul"),
                    PostItem("assets/images/p6.jpeg", "assets/images/p8.PNG",
                        "Eda Aydın", "İstanbul"),
                    PostItem("assets/images/p6.jpeg", "assets/images/p5.jpeg",
                        "Eda Aydın", "İstanbul"),
                  ]),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Icon(
                        Icons.home,
                        size: 28,
                        color: Colors.black54,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Icon(
                        Icons.search,
                        size: 28,
                        color: Colors.black54,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Icon(
                        Icons.smart_display,
                        size: 28,
                        color: Colors.black54,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Icon(
                        Icons.favorite,
                        size: 28,
                        color: Colors.black54,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Icon(
                        Icons.person,
                        size: 28,
                        color: Colors.black87,
                      ),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }

  Container PostItem(
          String resim, String photo, String isim, String location) =>
      Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(
                          resim,
                        ),
                        radius: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            isim,
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            location,
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Icon(Icons.more_horiz)
                ],
              ),
            ),
            Image.asset(photo),
            LikeCommentBox(),
            CommentBox("İkoo", "Mükemmeliizzz :)"),
          ],
        ),
      );

  Padding LikeCommentBox() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.favorite_border, color: Colors.black87),
              SizedBox(
                width: 8,
              ),
              Icon(Icons.comment_bank_outlined, color: Colors.black87),
            ],
          ),
          Icon(Icons.flag_circle_outlined, color: Colors.black87),
        ],
      ),
    );
  }

  Padding CommentBox(String name, String comment) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text("İkoo",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
                color: Colors.black87,
              )),
          SizedBox(
            width: 5,
          ),
          Text(
            "Mükemmeliizzz :)",
            style: TextStyle(color: Colors.black54, fontSize: 12),
          ),
        ],
      ),
    );
  }

  Widget StoryWidget(String avatar, String text) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
                color: Colors.green,
                gradient: LinearGradient(colors: [
                  const Color.fromRGBO(214, 71, 130, 1),
                  const Color.fromRGBO(241, 166, 117, 1)
                ]),
                shape: BoxShape.circle),
            child: Container(
              padding: EdgeInsets.all(2),
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.white),
              child: CircleAvatar(
                backgroundImage: AssetImage(avatar),
                radius: 40,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            text,
            style: TextStyle(fontSize: 11),
          ),
        ],
      ),
    );
  }
}
