import 'package:flutter/material.dart';
import 'package:whatsapp_clone/components/chattile.dart';
import 'package:whatsapp_clone/components/storybtn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Whatsapp(),
    );
  }
}

class Whatsapp extends StatefulWidget {
  const Whatsapp({Key? key}) : super(key: key);

  @override
  _WhatsappState createState() => _WhatsappState();
}

class _WhatsappState extends State<Whatsapp> {
  Color mainColor = Color(0xFF177767);
  var containerRadius = Radius.circular(30.0);
  List<String> imageUrl = [
    "https://i.pinimg.com/originals/2e/2f/ac/2e2fac9d4a392456e511345021592dd2.jpg",
    "https://randomuser.me/api/portraits/men/86.jpg",
    "https://randomuser.me/api/portraits/women/80.jpg",
    "https://randomuser.me/api/portraits/men/43.jpg",
    "https://randomuser.me/api/portraits/women/49.jpg",
    "https://randomuser.me/api/portraits/women/45.jpg",
    "https://randomuser.me/api/portraits/women/0.jpg",
    "https://randomuser.me/api/portraits/women/1.jpg",
    "https://randomuser.me/api/portraits/men/0.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: mainColor,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: mainColor,
          title: Text('WhatsApp Clone'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_horiz),
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              height: 100.0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    storyButton(imageUrl[0], "Davie yo"),
                    storyButton(imageUrl[1], "Jack  Brell"),
                    storyButton(imageUrl[2], "Anjie wo"),
                    storyButton(imageUrl[3], "Joseph"),
                    storyButton(imageUrl[4], "Juline Kujo"),
                    storyButton(imageUrl[5], "Juline Kujo"),
                    storyButton(imageUrl[6], "Juline Kujo"),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: containerRadius, topLeft: containerRadius),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 12.0, right: 12.0, top: 10.0),
                  child: ListView(
                    children: [
                      chatTile(imageUrl[0], "Davie Yo", "Hello, how are you?",
                          "09:30", false),
                      chatTile(imageUrl[1], "Jack Brell",
                          "Okay, scheduled for tomorrow then", "08:00", true),
                      chatTile(imageUrl[2], "Anjiel Wo",
                          "Yes, you are the best", "06:15", true),
                      chatTile(
                          imageUrl[3],
                          "Joseph",
                          "I need a hand tomorrow                      ",
                          "19:00",
                          false),
                      chatTile(imageUrl[4], "userName",
                          "Today I won't be able to go", "Yesterday", false),
                      chatTile(
                          imageUrl[5], "Juliene Kujo", "msg", "San 20", true),
                      chatTile(imageUrl[6], "Adan Wey", "msg", "San 20", true),
                      chatTile(imageUrl[7], "Jack Silver", "Hello how are you?",
                          "San 20", true),
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
